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
000078  9f495000  addli r19, zero, 44
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
0000dc  9f8efefb  addli sp, sp, -520
0000e0  1f8f9e03  addli r30, sp, 456
0000e4  2b010000  lui r2, 0
0000e8  80300002  core_id r1
0000ec  abf20000  lui r5, 15
0000f0  00550002  load_param_i r10, 0
0000f4  e3434f00  loadli.w r7,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  1b9ef2ff  ori r28, r5, 4095
000108  abf27fff  lui r5, 1046527
00010c  63035f00  loadli.w r6,  40(r30)
000110  0b942110  add.s r8, r3, r2
000114  9b92f2ff  ori r5, r5, 4095
000118  0b924320  mul.s r4, r7, r4
00011c  73680440  stores.w zero, 1040(r8)
000120  00a00300  mfence { lm, sm, gm }
000124  80210e04  csr_set csr3, r28
000128  00d00100  sync_group
00012c  e7018ffe  storeli.w r8, -232(r30)
000130  73605400  stores.w r5, 0(r8)
000134  0b126220  mul.s r4, r4, r6
000138  00a00300  mfence { lm, sm, gm }
00013c  80210e04  csr_set csr3, r28
000140  00d00100  sync_group
000144  67414ffe  storeli.w r4, -236(r30)
000148  4b4ea214  ble.s r4, r10, 11152
00014c  9f038000  addli r7, zero, 64
000150  63043ffe  loadli.w r8,  -232(r30)
000154  1f260000  addli r12, zero, 2
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  9f250000  addli r11, zero, 2
000160  1f080fff  addli r16, r30, -128
000164  9f088fff  addli r17, r30, -64
000168  1f090004  addli r18, zero, 512
00016c  9f097000  addli r19, zero, 56
000170  e745cfff  storeli.w r28, -164(r30)
000174  0b927030  div.s r4, r1, r7
000178  1f042408  addli r8, r8, 1040
00017c  e7408ffe  storeli.w r8, -244(r30)
000180  00d40002  load_param_i r8, 1
000184  67408ffe  storeli.w r8, -252(r30)
000188  67014ffe  storeli.w r4, -240(r30)
00018c  1b326200  slli r4, r4, 6
000190  0b924018  sub.s r4, r1, r4
000194  9b80f003  andi r1, r1, 63
000198  1b324200  slli r4, r4, 4
00019c  e7471ffe  storeli.w r1, -132(r30)
0001a0  1b141200  ori r8, r4, 1
0001a4  e7004ffe  storeli.w r4, -248(r30)
0001a8  67008ffe  storeli.w r8, -256(r30)
0001ac  1b142200  ori r8, r4, 2
0001b0  e74f8ffc  storeli.w r8, -260(r30)
0001b4  1b143200  ori r8, r4, 3
0001b8  e70f8ffc  storeli.w r8, -264(r30)
0001bc  1b144200  ori r8, r4, 4
0001c0  674f8ffc  storeli.w r8, -268(r30)
0001c4  1b145200  ori r8, r4, 5
0001c8  670f8ffc  storeli.w r8, -272(r30)
0001cc  1b146200  ori r8, r4, 6
0001d0  e74e8ffc  storeli.w r8, -276(r30)
0001d4  1b147200  ori r8, r4, 7
0001d8  e70e8ffc  storeli.w r8, -280(r30)
0001dc  1b148200  ori r8, r4, 8
0001e0  674e8ffc  storeli.w r8, -284(r30)
0001e4  1b149200  ori r8, r4, 9
0001e8  670e8ffc  storeli.w r8, -288(r30)
0001ec  1b14a200  ori r8, r4, 10
0001f0  e74d8ffc  storeli.w r8, -292(r30)
0001f4  1b14b200  ori r8, r4, 11
0001f8  e70d8ffc  storeli.w r8, -296(r30)
0001fc  1b14c200  ori r8, r4, 12
000200  674d8ffc  storeli.w r8, -300(r30)
000204  1b14d200  ori r8, r4, 13
000208  670d8ffc  storeli.w r8, -304(r30)
00020c  1b14e200  ori r8, r4, 14
000210  e74c8ffc  storeli.w r8, -308(r30)
000214  1b14f200  ori r8, r4, 15
000218  e70c8ffc  storeli.w r8, -312(r30)
00021c  33140228  sext_int2long r[9:10], r4
000220  2bf2ffff  lui r4, 1048575
000224  1b1202f0  ori r4, r4, 3840
000228  1734c402  sll.d r[9:10], r[9:10], r12
00022c  97814100  and r3, r3, r4
000230  0ba28210  add.ul r[5:6], r[6:7], r[9:10]
000234  0b912110  add.s r2, r3, r2
000238  73304fec  store.d r[5:6], -320(r30)
00023c  9f072108  addli r15, r2, 1040
000240  9f000000  addli r1, zero, 0
000244  8b111810  add.s r3, r16, r1
000248  9f801000  addli r1, r1, 8
00024c  67800100  storeli.w zero, 0(r3)
000250  67c00100  storeli.w zero, 4(r3)
000254  00a00000  mfence { lm }
000258  bbbf70fe  bneq r1, r7, -20
00025c  e3005f00  loadli.w r1,  40(r30)
000260  e3414f00  loadli.w r3,  36(r30)
000264  e707affe  storeli.w r10, -136(r30)
000268  8b101530  div.s r1, r10, r1
00026c  8b903030  div.s r1, r1, r3
000270  e3012ffe  loadli.w r3,  -240(r30)
000274  0b9c3010  add.s r24, r1, r3
000278  e3001ffe  loadli.w r1,  -248(r30)
00027c  ab0100f0  lui r3, 983040
000280  9b3cac00  slli r25, r24, 10
000284  97913300  or r3, r7, r3
000288  8b901c10  add.s r1, r25, r1
00028c  33920028  sext_int2long r[5:6], r1
000290  ab0000f0  lui r1, 983040
000294  1734b202  sll.d r[9:10], r[5:6], r11
000298  6b520f00  load.d r[5:6], 0(r30)
00029c  97901300  or r1, r7, r1
0002a0  73388ff6  store.d r[9:10], -144(r30)
0002a4  0b228210  add.ul r[5:6], r[5:6], r[9:10]
0002a8  ff210201  l_gm2lm r3, r16, 0(r[5:6])
0002ac  eb510fec  load.d r[4:5], -320(r30)
0002b0  ffa01101  l_gm2lm r1, r17, 0(r[4:5])
0002b4  00a00000  mfence { lm }
0002b8  e3000fff  loadli.w r1,  -128(r30)
0002bc  63028fff  loadli.w r4,  -64(r30)
0002c0  e3410fff  loadli.w r3,  -124(r30)
0002c4  e3428fff  loadli.w r5,  -60(r30)
0002c8  0bea5110  add.f.rn r20, r3, r5
0002cc  0be74010  add.f.rn r14, r1, r4
0002d0  1f030700  addli r6, r14, 0
0002d4  9f010a00  addli r3, r20, 0
0002d8  3f302c01  blt.s r24, r18, 12
0002dc  2b0380ff  lui r6, 1046528
0002e0  ab0180ff  lui r3, 1046528
0002e4  9fc00800  addli r1, r17, 4
0002e8  1f020000  addli r4, zero, 0
0002ec  e7461ffe  storeli.w r1, -148(r30)
0002f0  db020000  j 20
0002f4  1f021200  addli r4, r4, 8
0002f8  9f810200  addli r3, r5, 0
0002fc  1f830000  addli r6, r1, 0
000300  37053201  beq r4, r19, 320
000304  8b124810  add.s r5, r16, r4
000308  0b944810  add.s r8, r17, r4
00030c  e3801200  loadli.w r1,  8(r5)
000310  e3041400  loadli.w r9,  8(r8)
000314  e3c21200  loadli.w r5,  12(r5)
000318  63441400  loadli.w r8,  12(r8)
00031c  8be09010  add.f.rn r1, r1, r9
000320  9f040300  addli r9, r6, 0
000324  13e56004  setlt.f r10, r1, r6
000328  3b200500  bneq r10, zero, 8
00032c  9f840000  addli r9, r1, 0
000330  1bb59000  slli r10, r1, 9
000334  9b359300  slli r11, r6, 9
000338  1bc67001  srli r12, r1, 23
00033c  9b467301  srli r13, r6, 23
000340  13050500  seteq r10, r10, zero
000344  93850500  seteq r11, r11, zero
000348  1b06f60f  andi r12, r12, 255
00034c  9b86f60f  andi r13, r13, 255
000350  1b76f60f  setlti r12, r12, 255
000354  9bf6f60f  setlti r13, r13, 255
000358  1715a600  or r10, r12, r10
00035c  9795b600  or r11, r13, r11
000360  1785a500  and r10, r11, r10
000364  b7320500  beq r10, zero, 172
000368  1f050300  addli r10, r6, 0
00036c  bb420300  bneq r6, zero, 176
000370  37a00000  beq r1, zero, 8
000374  9f000500  addli r1, r10, 0
000378  13659006  setle.f r10, zero, r9
00037c  93e50406  setle.f r11, r9, zero
000380  1785a500  and r10, r11, r10
000384  3b200500  bneq r10, zero, 8
000388  9f800400  addli r1, r9, 0
00038c  3f202c01  blt.s r24, r18, 8
000390  9f000300  addli r1, r6, 0
000394  8be28210  add.f.rn r5, r5, r8
000398  1f830100  addli r6, r3, 0
00039c  13e43204  setlt.f r8, r5, r3
0003a0  3b200400  bneq r8, zero, 8
0003a4  1f830200  addli r6, r5, 0
0003a8  1bb49200  slli r8, r5, 9
0003ac  9bb49100  slli r9, r3, 9
0003b0  1bc57201  srli r10, r5, 23
0003b4  9bc57101  srli r11, r3, 23
0003b8  13040400  seteq r8, r8, zero
0003bc  93840400  seteq r9, r9, zero
0003c0  1b05f50f  andi r10, r10, 255
0003c4  9b85f50f  andi r11, r11, 255
0003c8  1b75f50f  setlti r10, r10, 255
0003cc  9bf5f50f  setlti r11, r11, 255
0003d0  17148500  or r8, r10, r8
0003d4  97949500  or r9, r11, r9
0003d8  17848400  and r8, r9, r8
0003dc  37310400  beq r8, zero, 76
0003e0  1f840100  addli r8, r3, 0
0003e4  3bc10100  bneq r3, zero, 80
0003e8  37a00200  beq r5, zero, 8
0003ec  9f020400  addli r5, r8, 0
0003f0  13646006  setle.f r8, zero, r6
0003f4  93640306  setle.f r9, r6, zero
0003f8  17848400  and r8, r9, r8
0003fc  3b200400  bneq r8, zero, 8
000400  9f020300  addli r5, r6, 0
000404  bf4b2cff  blt.s r24, r18, -272
000408  9f820100  addli r5, r3, 0
00040c  5bddffff  j -280
000410  ab04c07f  lui r9, 523264
000414  1f050300  addli r10, r6, 0
000418  376d03fe  beq r6, zero, -168
00041c  1f850400  addli r10, r9, 0
000420  3bdd00fe  bneq r1, zero, -172
000424  dbeaffff  j -172
000428  2b03c07f  lui r6, 523264
00042c  1f840100  addli r8, r3, 0
000430  b7ee01fe  beq r3, zero, -72
000434  1f040300  addli r8, r6, 0
000438  bbde02fe  bneq r5, zero, -76
00043c  dbf6ffff  j -76
000440  13e21204  setlt.f r4, r5, r1
000444  9f810000  addli r3, r1, 0
000448  3b200200  bneq r4, zero, 8
00044c  9f810200  addli r3, r5, 0
000450  1bb29200  slli r4, r5, 9
000454  1bb39000  slli r6, r1, 9
000458  1bc47201  srli r8, r5, 23
00045c  9bc47001  srli r9, r1, 23
000460  13020200  seteq r4, r4, zero
000464  13030300  seteq r6, r6, zero
000468  1b04f40f  andi r8, r8, 255
00046c  9b84f40f  andi r9, r9, 255
000470  1b74f40f  setlti r8, r8, 255
000474  9bf4f40f  setlti r9, r9, 255
000478  17124400  or r4, r8, r4
00047c  17936400  or r6, r9, r6
000480  17024300  and r4, r6, r4
000484  3746020e  beq r4, zero, 7568
000488  3bd6000e  bneq r1, zero, 7572
00048c  37a00200  beq r5, zero, 8
000490  9f820000  addli r5, r1, 0
000494  93603006  setle.f r1, zero, r3
000498  13e20106  setle.f r4, r3, zero
00049c  97001200  and r1, r4, r1
0004a0  3ba00000  bneq r1, zero, 8
0004a4  9f820100  addli r5, r3, 0
0004a8  e3003ffe  loadli.w r1,  -232(r30)
0004ac  73e05000  stores.w r5, 0(r1)
0004b0  00a00300  mfence { lm, sm, gm }
0004b4  80210e04  csr_set csr3, r28
0004b8  00d00100  sync_group
0004bc  e340fffe  loadli.w r1,  -132(r30)
0004c0  bbd4000e  bneq r1, zero, 7476
0004c4  6f420100  loads.w r4, 0(r2)
0004c8  ef404100  loads.w r1, 4(r2)
0004cc  93e24004  setlt.f r5, r1, r4
0004d0  9f010200  addli r3, r4, 0
0004d4  3ba00200  bneq r5, zero, 8
0004d8  9f810000  addli r3, r1, 0
0004dc  9b329200  slli r5, r4, 9
0004e0  1bb39000  slli r6, r1, 9
0004e4  1b447201  srli r8, r4, 23
0004e8  9bc47001  srli r9, r1, 23
0004ec  93820200  seteq r5, r5, zero
0004f0  13030300  seteq r6, r6, zero
0004f4  1b04f40f  andi r8, r8, 255
0004f8  9b84f40f  andi r9, r9, 255
0004fc  1b74f40f  setlti r8, r8, 255
000500  9bf4f40f  setlti r9, r9, 255
000504  97125400  or r5, r8, r5
000508  17936400  or r6, r9, r6
00050c  97826200  and r5, r5, r6
000510  b7f90210  beq r5, zero, 8828
000514  3b0a0210  bneq r4, zero, 8832
000518  37a00000  beq r1, zero, 8
00051c  9f000200  addli r1, r4, 0
000520  13623006  setle.f r4, zero, r3
000524  93e20106  setle.f r5, r3, zero
000528  e70b4ffd  storeli.w r20, -328(r30)
00052c  17824200  and r4, r5, r4
000530  3b200200  bneq r4, zero, 8
000534  9f800100  addli r1, r3, 0
000538  6f4a8100  loads.w r20, 8(r2)
00053c  9f810000  addli r3, r1, 0
000540  13621a04  setlt.f r4, r20, r1
000544  3b200200  bneq r4, zero, 8
000548  9f010a00  addli r3, r20, 0
00054c  1b329a00  slli r4, r20, 9
000550  9bb29000  slli r5, r1, 9
000554  1b437a01  srli r6, r20, 23
000558  1bc47001  srli r8, r1, 23
00055c  13020200  seteq r4, r4, zero
000560  93820200  seteq r5, r5, zero
000564  1b03f30f  andi r6, r6, 255
000568  1b04f40f  andi r8, r8, 255
00056c  1b73f30f  setlti r6, r6, 255
000570  1b74f40f  setlti r8, r8, 255
000574  17124300  or r4, r6, r4
000578  97125400  or r5, r8, r5
00057c  17824200  and r4, r5, r4
000580  b7080210  beq r4, zero, 8736
000584  bb980010  bneq r1, zero, 8740
000588  37200a00  beq r20, zero, 8
00058c  1f8a0000  addli r20, r1, 0
000590  93603006  setle.f r1, zero, r3
000594  13e20106  setle.f r4, r3, zero
000598  e74beffc  storeli.w r14, -324(r30)
00059c  e7499ffd  storeli.w r25, -356(r30)
0005a0  97001200  and r1, r4, r1
0005a4  3ba00000  bneq r1, zero, 8
0005a8  1f8a0100  addli r20, r3, 0
0005ac  ef40c103  loads.w r1, 60(r2)
0005b0  ef42c100  loads.w r5, 12(r2)
0005b4  6f450101  loads.w r10, 16(r2)
0005b8  6f4b4101  loads.w r22, 20(r2)
0005bc  6f478101  loads.w r14, 24(r2)
0005c0  6f4ec101  loads.w r28, 28(r2)
0005c4  ef460102  loads.w r13, 32(r2)
0005c8  6f444102  loads.w r8, 36(r2)
0005cc  6f438102  loads.w r6, 40(r2)
0005d0  ef41c102  loads.w r3, 44(r2)
0005d4  6f460103  loads.w r12, 48(r2)
0005d8  ef454103  loads.w r11, 52(r2)
0005dc  ef4b8103  loads.w r23, 56(r2)
0005e0  6f4dc10c  loads.w r26, 204(r2)
0005e4  ef4d410e  loads.w r27, 228(r2)
0005e8  e7431ffc  storeli.w r1, -452(r30)
0005ec  ef400104  loads.w r1, 64(r2)
0005f0  93ec4205  setlt.f r25, r5, r20
0005f4  e7411ffe  storeli.w r1, -228(r30)
0005f8  ef404104  loads.w r1, 68(r2)
0005fc  67041ffc  storeli.w r1, -448(r30)
000600  ef408104  loads.w r1, 72(r2)
000604  67021ffe  storeli.w r1, -224(r30)
000608  ef40c104  loads.w r1, 76(r2)
00060c  67441ffc  storeli.w r1, -444(r30)
000610  ef400105  loads.w r1, 80(r2)
000614  67421ffe  storeli.w r1, -220(r30)
000618  ef404105  loads.w r1, 84(r2)
00061c  e7041ffc  storeli.w r1, -440(r30)
000620  ef408105  loads.w r1, 88(r2)
000624  e7021ffe  storeli.w r1, -216(r30)
000628  ef40c105  loads.w r1, 92(r2)
00062c  e7441ffc  storeli.w r1, -436(r30)
000630  ef400106  loads.w r1, 96(r2)
000634  e7421ffe  storeli.w r1, -212(r30)
000638  ef404106  loads.w r1, 100(r2)
00063c  67051ffc  storeli.w r1, -432(r30)
000640  ef408106  loads.w r1, 104(r2)
000644  67031ffe  storeli.w r1, -208(r30)
000648  ef40c106  loads.w r1, 108(r2)
00064c  67451ffc  storeli.w r1, -428(r30)
000650  ef400107  loads.w r1, 112(r2)
000654  67431ffe  storeli.w r1, -204(r30)
000658  ef404107  loads.w r1, 116(r2)
00065c  e7051ffc  storeli.w r1, -424(r30)
000660  ef408107  loads.w r1, 120(r2)
000664  e7031ffe  storeli.w r1, -200(r30)
000668  ef40c107  loads.w r1, 124(r2)
00066c  e7451ffc  storeli.w r1, -420(r30)
000670  ef400108  loads.w r1, 128(r2)
000674  e7431ffe  storeli.w r1, -196(r30)
000678  ef404108  loads.w r1, 132(r2)
00067c  67061ffc  storeli.w r1, -416(r30)
000680  ef408108  loads.w r1, 136(r2)
000684  67041ffe  storeli.w r1, -192(r30)
000688  ef40c108  loads.w r1, 140(r2)
00068c  67461ffc  storeli.w r1, -412(r30)
000690  ef400109  loads.w r1, 144(r2)
000694  67441ffe  storeli.w r1, -188(r30)
000698  ef404109  loads.w r1, 148(r2)
00069c  e7061ffc  storeli.w r1, -408(r30)
0006a0  ef408109  loads.w r1, 152(r2)
0006a4  e7041ffe  storeli.w r1, -184(r30)
0006a8  ef40c109  loads.w r1, 156(r2)
0006ac  e7461ffc  storeli.w r1, -404(r30)
0006b0  ef40010a  loads.w r1, 160(r2)
0006b4  e7441ffe  storeli.w r1, -180(r30)
0006b8  ef40410a  loads.w r1, 164(r2)
0006bc  67071ffc  storeli.w r1, -400(r30)
0006c0  ef40810a  loads.w r1, 168(r2)
0006c4  67051ffe  storeli.w r1, -176(r30)
0006c8  ef40c10a  loads.w r1, 172(r2)
0006cc  67471ffc  storeli.w r1, -396(r30)
0006d0  ef40010b  loads.w r1, 176(r2)
0006d4  67451ffe  storeli.w r1, -172(r30)
0006d8  ef40410b  loads.w r1, 180(r2)
0006dc  e7071ffc  storeli.w r1, -392(r30)
0006e0  ef40810b  loads.w r1, 184(r2)
0006e4  e7051ffe  storeli.w r1, -168(r30)
0006e8  ef40c10b  loads.w r1, 188(r2)
0006ec  e7471ffc  storeli.w r1, -388(r30)
0006f0  ef40010c  loads.w r1, 192(r2)
0006f4  67061ffe  storeli.w r1, -160(r30)
0006f8  ef40410c  loads.w r1, 196(r2)
0006fc  67081ffc  storeli.w r1, -384(r30)
000700  ef40810c  loads.w r1, 200(r2)
000704  67481ffc  storeli.w r1, -380(r30)
000708  ef40010d  loads.w r1, 208(r2)
00070c  e7061ffe  storeli.w r1, -152(r30)
000710  ef40410d  loads.w r1, 212(r2)
000714  e7081ffc  storeli.w r1, -376(r30)
000718  ef40810d  loads.w r1, 216(r2)
00071c  67091ffc  storeli.w r1, -368(r30)
000720  ef40c10d  loads.w r1, 220(r2)
000724  67491ffc  storeli.w r1, -364(r30)
000728  ef40010e  loads.w r1, 224(r2)
00072c  e7091ffc  storeli.w r1, -360(r30)
000730  ef40810e  loads.w r1, 232(r2)
000734  670a1ffc  storeli.w r1, -352(r30)
000738  ef40c10e  loads.w r1, 236(r2)
00073c  674a1ffc  storeli.w r1, -348(r30)
000740  ef40010f  loads.w r1, 240(r2)
000744  e70a1ffc  storeli.w r1, -344(r30)
000748  ef40410f  loads.w r1, 244(r2)
00074c  e74a1ffc  storeli.w r1, -340(r30)
000750  ef40810f  loads.w r1, 248(r2)
000754  670b1ffc  storeli.w r1, -336(r30)
000758  ef40c10f  loads.w r1, 252(r2)
00075c  674b1ffc  storeli.w r1, -332(r30)
000760  9f000a00  addli r1, r20, 0
000764  3ba00c00  bneq r25, zero, 8
000768  9f800200  addli r1, r5, 0
00076c  9bbc9200  slli r25, r5, 9
000770  9b349a00  slli r9, r20, 9
000774  1bc27201  srli r4, r5, 23
000778  9b4a7a01  srli r21, r20, 23
00077c  938c0c00  seteq r25, r25, zero
000780  93840400  seteq r9, r9, zero
000784  1b02f20f  andi r4, r4, 255
000788  9b8afa0f  andi r21, r21, 255
00078c  1b72f20f  setlti r4, r4, 255
000790  9bfafa0f  setlti r21, r21, 255
000794  17129201  or r4, r4, r25
000798  97949a00  or r9, r21, r9
00079c  17824400  and r4, r9, r4
0007a0  37500210  beq r4, zero, 8212
0007a4  e34c3ffd  loadli.w r25,  -356(r30)
0007a8  3b600a10  bneq r20, zero, 8216
0007ac  37a00200  beq r5, zero, 8
0007b0  9f020a00  addli r5, r20, 0
0007b4  13621006  setle.f r4, zero, r1
0007b8  93e40006  setle.f r9, r1, zero
0007bc  17824400  and r4, r9, r4
0007c0  3b200200  bneq r4, zero, 8
0007c4  9f820000  addli r5, r1, 0
0007c8  13625504  setlt.f r4, r10, r5
0007cc  9f800200  addli r1, r5, 0
0007d0  3b200200  bneq r4, zero, 8
0007d4  9f000500  addli r1, r10, 0
0007d8  1b329500  slli r4, r10, 9
0007dc  9bb49200  slli r9, r5, 9
0007e0  1b4a7501  srli r20, r10, 23
0007e4  9bca7201  srli r21, r5, 23
0007e8  13020200  seteq r4, r4, zero
0007ec  93840400  seteq r9, r9, zero
0007f0  1b0afa0f  andi r20, r20, 255
0007f4  9b8afa0f  andi r21, r21, 255
0007f8  1b7afa0f  setlti r20, r20, 255
0007fc  9bfafa0f  setlti r21, r21, 255
000800  17124a00  or r4, r20, r4
000804  97949a00  or r9, r21, r9
000808  17824400  and r4, r9, r4
00080c  3b200200  bneq r4, zero, 8
000810  ab00c07f  lui r1, 523264
000814  e748bffd  storeli.w r27, -372(r30)
000818  6746afff  storeli.w r26, -156(r30)
00081c  37a00200  beq r5, zero, 8
000820  9f820000  addli r5, r1, 0
000824  e30dcffc  loadli.w r27,  -416(r30)
000828  634d7ffc  loadli.w r26,  -452(r30)
00082c  37200500  beq r10, zero, 8
000830  1f850200  addli r10, r5, 0
000834  13621006  setle.f r4, zero, r1
000838  93e20006  setle.f r5, r1, zero
00083c  17824200  and r4, r5, r4
000840  3b200200  bneq r4, zero, 8
000844  1f850000  addli r10, r1, 0
000848  1362ab04  setlt.f r4, r22, r10
00084c  9f000500  addli r1, r10, 0
000850  3b200200  bneq r4, zero, 8
000854  9f000b00  addli r1, r22, 0
000858  1b329b00  slli r4, r22, 9
00085c  9b329500  slli r5, r10, 9
000860  9b447b01  srli r9, r22, 23
000864  1b4a7501  srli r20, r10, 23
000868  13020200  seteq r4, r4, zero
00086c  93820200  seteq r5, r5, zero
000870  9b84f40f  andi r9, r9, 255
000874  1b0afa0f  andi r20, r20, 255
000878  9bf4f40f  setlti r9, r9, 255
00087c  1b7afa0f  setlti r20, r20, 255
000880  17924400  or r4, r9, r4
000884  97125a00  or r5, r20, r5
000888  17824200  and r4, r5, r4
00088c  370d020e  beq r4, zero, 8000
000890  634a9ffc  loadli.w r20,  -436(r30)
000894  3b1d050e  bneq r10, zero, 8004
000898  37200b00  beq r22, zero, 8
00089c  1f0b0500  addli r22, r10, 0
0008a0  13621006  setle.f r4, zero, r1
0008a4  93e20006  setle.f r5, r1, zero
0008a8  17824200  and r4, r5, r4
0008ac  3b200200  bneq r4, zero, 8
0008b0  1f8b0000  addli r22, r1, 0
0008b4  13626705  setlt.f r4, r14, r22
0008b8  9f000b00  addli r1, r22, 0
0008bc  3b200200  bneq r4, zero, 8
0008c0  9f000700  addli r1, r14, 0
0008c4  1b329700  slli r4, r14, 9
0008c8  9b329b00  slli r5, r22, 9
0008cc  9b447701  srli r9, r14, 23
0008d0  1b457b01  srli r10, r22, 23
0008d4  13020200  seteq r4, r4, zero
0008d8  93820200  seteq r5, r5, zero
0008dc  9b84f40f  andi r9, r9, 255
0008e0  1b05f50f  andi r10, r10, 255
0008e4  9bf4f40f  setlti r9, r9, 255
0008e8  1b75f50f  setlti r10, r10, 255
0008ec  17924400  or r4, r9, r4
0008f0  97125500  or r5, r10, r5
0008f4  17824200  and r4, r5, r4
0008f8  b73b020e  beq r4, zero, 7916
0008fc  bb4b0b0e  bneq r22, zero, 7920
000900  37200700  beq r14, zero, 8
000904  1f070b00  addli r14, r22, 0
000908  13621006  setle.f r4, zero, r1
00090c  93e20006  setle.f r5, r1, zero
000910  17824200  and r4, r5, r4
000914  3b200200  bneq r4, zero, 8
000918  1f870000  addli r14, r1, 0
00091c  1362ee04  setlt.f r4, r28, r14
000920  630baffc  loadli.w r22,  -432(r30)
000924  e30a9ffc  loadli.w r21,  -440(r30)
000928  9f000700  addli r1, r14, 0
00092c  3b200200  bneq r4, zero, 8
000930  9f000e00  addli r1, r28, 0
000934  1b329e00  slli r4, r28, 9
000938  9b329700  slli r5, r14, 9
00093c  9b447e01  srli r9, r28, 23
000940  1b457701  srli r10, r14, 23
000944  13020200  seteq r4, r4, zero
000948  93820200  seteq r5, r5, zero
00094c  9b84f40f  andi r9, r9, 255
000950  1b05f50f  andi r10, r10, 255
000954  9bf4f40f  setlti r9, r9, 255
000958  1b75f50f  setlti r10, r10, 255
00095c  17924400  or r4, r9, r4
000960  97125500  or r5, r10, r5
000964  17824200  and r4, r5, r4
000968  374a020e  beq r4, zero, 7824
00096c  3b5a070e  bneq r14, zero, 7828
000970  37200e00  beq r28, zero, 8
000974  1f0e0700  addli r28, r14, 0
000978  13621006  setle.f r4, zero, r1
00097c  93e20006  setle.f r5, r1, zero
000980  17824200  and r4, r5, r4
000984  3b200200  bneq r4, zero, 8
000988  1f8e0000  addli r28, r1, 0
00098c  13e2c605  setlt.f r4, r13, r28
000990  63478ffc  loadli.w r14,  -444(r30)
000994  9f000e00  addli r1, r28, 0
000998  3b200200  bneq r4, zero, 8
00099c  9f800600  addli r1, r13, 0
0009a0  1bb29600  slli r4, r13, 9
0009a4  9b329e00  slli r5, r28, 9
0009a8  9bc47601  srli r9, r13, 23
0009ac  1b457e01  srli r10, r28, 23
0009b0  13020200  seteq r4, r4, zero
0009b4  93820200  seteq r5, r5, zero
0009b8  9b84f40f  andi r9, r9, 255
0009bc  1b05f50f  andi r10, r10, 255
0009c0  9bf4f40f  setlti r9, r9, 255
0009c4  1b75f50f  setlti r10, r10, 255
0009c8  17924400  or r4, r9, r4
0009cc  97125500  or r5, r10, r5
0009d0  17824200  and r4, r5, r4
0009d4  b768020e  beq r4, zero, 7736
0009d8  bb780e0e  bneq r28, zero, 7740
0009dc  37a00600  beq r13, zero, 8
0009e0  9f060e00  addli r13, r28, 0
0009e4  13621006  setle.f r4, zero, r1
0009e8  93e20006  setle.f r5, r1, zero
0009ec  17824200  and r4, r5, r4
0009f0  3b200200  bneq r4, zero, 8
0009f4  9f860000  addli r13, r1, 0
0009f8  1362d404  setlt.f r4, r8, r13
0009fc  630eeffc  loadli.w r28,  -400(r30)
000a00  9f800600  addli r1, r13, 0
000a04  3b200200  bneq r4, zero, 8
000a08  9f000400  addli r1, r8, 0
000a0c  1b329400  slli r4, r8, 9
000a10  9bb29600  slli r5, r13, 9
000a14  9b447401  srli r9, r8, 23
000a18  1bc57601  srli r10, r13, 23
000a1c  13020200  seteq r4, r4, zero
000a20  93820200  seteq r5, r5, zero
000a24  9b84f40f  andi r9, r9, 255
000a28  1b05f50f  andi r10, r10, 255
000a2c  9bf4f40f  setlti r9, r9, 255
000a30  1b75f50f  setlti r10, r10, 255
000a34  17924400  or r4, r9, r4
000a38  97125500  or r5, r10, r5
000a3c  17824200  and r4, r5, r4
000a40  b707020e  beq r4, zero, 7648
000a44  bb97060e  bneq r13, zero, 7652
000a48  37200400  beq r8, zero, 8
000a4c  1f840600  addli r8, r13, 0
000a50  13621006  setle.f r4, zero, r1
000a54  93e20006  setle.f r5, r1, zero
000a58  17824200  and r4, r5, r4
000a5c  3b200200  bneq r4, zero, 8
000a60  1f840000  addli r8, r1, 0
000a64  13628304  setlt.f r4, r6, r8
000a68  e346bffc  loadli.w r13,  -420(r30)
000a6c  9f000400  addli r1, r8, 0
000a70  3b200200  bneq r4, zero, 8
000a74  9f000300  addli r1, r6, 0
000a78  1b329300  slli r4, r6, 9
000a7c  9b329400  slli r5, r8, 9
000a80  9b447301  srli r9, r6, 23
000a84  1b457401  srli r10, r8, 23
000a88  13020200  seteq r4, r4, zero
000a8c  93820200  seteq r5, r5, zero
000a90  9b84f40f  andi r9, r9, 255
000a94  1b05f50f  andi r10, r10, 255
000a98  9bf4f40f  setlti r9, r9, 255
000a9c  1b75f50f  setlti r10, r10, 255
000aa0  17924400  or r4, r9, r4
000aa4  97125500  or r5, r10, r5
000aa8  17824200  and r4, r5, r4
000aac  3726020e  beq r4, zero, 7560
000ab0  6345dffc  loadli.w r10,  -404(r30)
000ab4  3b36040e  bneq r8, zero, 7564
000ab8  37200300  beq r6, zero, 8
000abc  1f030400  addli r6, r8, 0
000ac0  13621006  setle.f r4, zero, r1
000ac4  93e20006  setle.f r5, r1, zero
000ac8  17824200  and r4, r5, r4
000acc  3b200200  bneq r4, zero, 8
000ad0  1f830000  addli r6, r1, 0
000ad4  13e26104  setlt.f r4, r3, r6
000ad8  9f000300  addli r1, r6, 0
000adc  3b200200  bneq r4, zero, 8
000ae0  9f800100  addli r1, r3, 0
000ae4  1bb29100  slli r4, r3, 9
000ae8  9b329300  slli r5, r6, 9
000aec  1bc47101  srli r8, r3, 23
000af0  9b447301  srli r9, r6, 23
000af4  13020200  seteq r4, r4, zero
000af8  93820200  seteq r5, r5, zero
000afc  1b04f40f  andi r8, r8, 255
000b00  9b84f40f  andi r9, r9, 255
000b04  1b74f40f  setlti r8, r8, 255
000b08  9bf4f40f  setlti r9, r9, 255
000b0c  17124400  or r4, r8, r4
000b10  97925400  or r5, r9, r5
000b14  17824200  and r4, r5, r4
000b18  b754020e  beq r4, zero, 7476
000b1c  e304dffc  loadli.w r9,  -408(r30)
000b20  bb64030e  bneq r6, zero, 7480
000b24  37a00100  beq r3, zero, 8
000b28  9f010300  addli r3, r6, 0
000b2c  13621006  setle.f r4, zero, r1
000b30  93e20006  setle.f r5, r1, zero
000b34  17824200  and r4, r5, r4
000b38  3b200200  bneq r4, zero, 8
000b3c  9f810000  addli r3, r1, 0
000b40  13623604  setlt.f r4, r12, r3
000b44  9f800100  addli r1, r3, 0
000b48  3b200200  bneq r4, zero, 8
000b4c  9f000600  addli r1, r12, 0
000b50  1b329600  slli r4, r12, 9
000b54  9bb29100  slli r5, r3, 9
000b58  1b437601  srli r6, r12, 23
000b5c  1bc47101  srli r8, r3, 23
000b60  13020200  seteq r4, r4, zero
000b64  93820200  seteq r5, r5, zero
000b68  1b03f30f  andi r6, r6, 255
000b6c  1b04f40f  andi r8, r8, 255
000b70  1b73f30f  setlti r6, r6, 255
000b74  1b74f40f  setlti r8, r8, 255
000b78  17124300  or r4, r6, r4
000b7c  97125400  or r5, r8, r5
000b80  17824200  and r4, r5, r4
000b84  b703020e  beq r4, zero, 7392
000b88  6344cffc  loadli.w r8,  -412(r30)
000b8c  bb93010e  bneq r3, zero, 7396
000b90  37200600  beq r12, zero, 8
000b94  1f860100  addli r12, r3, 0
000b98  93611006  setle.f r3, zero, r1
000b9c  13e20006  setle.f r4, r1, zero
000ba0  97013200  and r3, r4, r3
000ba4  3ba00100  bneq r3, zero, 8
000ba8  1f860000  addli r12, r1, 0
000bac  93e1c504  setlt.f r3, r11, r12
000bb0  9f000600  addli r1, r12, 0
000bb4  3ba00100  bneq r3, zero, 8
000bb8  9f800500  addli r1, r11, 0
000bbc  9bb19500  slli r3, r11, 9
000bc0  1b329600  slli r4, r12, 9
000bc4  9bc27501  srli r5, r11, 23
000bc8  1b437601  srli r6, r12, 23
000bcc  93810100  seteq r3, r3, zero
000bd0  13020200  seteq r4, r4, zero
000bd4  9b82f20f  andi r5, r5, 255
000bd8  1b03f30f  andi r6, r6, 255
000bdc  9bf2f20f  setlti r5, r5, 255
000be0  1b73f30f  setlti r6, r6, 255
000be4  97913200  or r3, r5, r3
000be8  17124300  or r4, r6, r4
000bec  97013200  and r3, r4, r3
000bf0  37b2010e  beq r3, zero, 7308
000bf4  3b42060e  bneq r12, zero, 7312
000bf8  37a00500  beq r11, zero, 8
000bfc  9f050600  addli r11, r12, 0
000c00  93611006  setle.f r3, zero, r1
000c04  13e20006  setle.f r4, r1, zero
000c08  97013200  and r3, r4, r3
000c0c  3ba00100  bneq r3, zero, 8
000c10  9f850000  addli r11, r1, 0
000c14  93e1bb04  setlt.f r3, r23, r11
000c18  6306bffc  loadli.w r12,  -424(r30)
000c1c  9f800500  addli r1, r11, 0
000c20  3ba00100  bneq r3, zero, 8
000c24  9f800b00  addli r1, r23, 0
000c28  9bb19b00  slli r3, r23, 9
000c2c  1bb29500  slli r4, r11, 9
000c30  9bc27b01  srli r5, r23, 23
000c34  1bc37501  srli r6, r11, 23
000c38  93810100  seteq r3, r3, zero
000c3c  13020200  seteq r4, r4, zero
000c40  9b82f20f  andi r5, r5, 255
000c44  1b03f30f  andi r6, r6, 255
000c48  9bf2f20f  setlti r5, r5, 255
000c4c  1b73f30f  setlti r6, r6, 255
000c50  97913200  or r3, r5, r3
000c54  17124300  or r4, r6, r4
000c58  97013200  and r3, r4, r3
000c5c  b7d0010e  beq r3, zero, 7220
000c60  bbe0050e  bneq r11, zero, 7224
000c64  37a00b00  beq r23, zero, 8
000c68  9f8b0500  addli r23, r11, 0
000c6c  93611006  setle.f r3, zero, r1
000c70  13e20006  setle.f r4, r1, zero
000c74  97013200  and r3, r4, r3
000c78  3ba00100  bneq r3, zero, 8
000c7c  9f8b0000  addli r23, r1, 0
000c80  93617d05  setlt.f r3, r26, r23
000c84  e345affc  loadli.w r11,  -428(r30)
000c88  9f800b00  addli r1, r23, 0
000c8c  3ba00100  bneq r3, zero, 8
000c90  9f000d00  addli r1, r26, 0
000c94  9b319d00  slli r3, r26, 9
000c98  1bb29b00  slli r4, r23, 9
000c9c  9b427d01  srli r5, r26, 23
000ca0  1bc37b01  srli r6, r23, 23
000ca4  93810100  seteq r3, r3, zero
000ca8  13020200  seteq r4, r4, zero
000cac  9b82f20f  andi r5, r5, 255
000cb0  1b03f30f  andi r6, r6, 255
000cb4  9bf2f20f  setlti r5, r5, 255
000cb8  1b73f30f  setlti r6, r6, 255
000cbc  97913200  or r3, r5, r3
000cc0  17124300  or r4, r6, r4
000cc4  97013200  and r3, r4, r3
000cc8  37ff010c  beq r3, zero, 7132
000ccc  e3423ffe  loadli.w r5,  -228(r30)
000cd0  bb8f0b0c  bneq r23, zero, 7136
000cd4  37200d00  beq r26, zero, 8
000cd8  1f8d0b00  addli r26, r23, 0
000cdc  93611006  setle.f r3, zero, r1
000ce0  13e20006  setle.f r4, r1, zero
000ce4  97013200  and r3, r4, r3
000ce8  3ba00100  bneq r3, zero, 8
000cec  1f8d0000  addli r26, r1, 0
000cf0  93e1a205  setlt.f r3, r5, r26
000cf4  e30b8ffc  loadli.w r23,  -448(r30)
000cf8  9f000d00  addli r1, r26, 0
000cfc  3ba00100  bneq r3, zero, 8
000d00  9f800200  addli r1, r5, 0
000d04  9bb19200  slli r3, r5, 9
000d08  1b329d00  slli r4, r26, 9
000d0c  9bc27201  srli r5, r5, 23
000d10  1b437d01  srli r6, r26, 23
000d14  93810100  seteq r3, r3, zero
000d18  13020200  seteq r4, r4, zero
000d1c  9b82f20f  andi r5, r5, 255
000d20  1b03f30f  andi r6, r6, 255
000d24  9bf2f20f  setlti r5, r5, 255
000d28  1b73f30f  setlti r6, r6, 255
000d2c  97913200  or r3, r5, r3
000d30  17124300  or r4, r6, r4
000d34  97013200  and r3, r4, r3
000d38  379e010c  beq r3, zero, 7044
000d3c  3b2e0d0c  bneq r26, zero, 7048
000d40  63433ffe  loadli.w r6,  -228(r30)
000d44  37200300  beq r6, zero, 8
000d48  1f030d00  addli r6, r26, 0
000d4c  93611006  setle.f r3, zero, r1
000d50  13e20006  setle.f r4, r1, zero
000d54  97013200  and r3, r4, r3
000d58  3ba00100  bneq r3, zero, 8
000d5c  1f830000  addli r6, r1, 0
000d60  93e16b04  setlt.f r3, r23, r6
000d64  9f000300  addli r1, r6, 0
000d68  3ba00100  bneq r3, zero, 8
000d6c  9f800b00  addli r1, r23, 0
000d70  9bb19b00  slli r3, r23, 9
000d74  1b329300  slli r4, r6, 9
000d78  9bc27b01  srli r5, r23, 23
000d7c  1f0d0300  addli r26, r6, 0
000d80  1b437301  srli r6, r6, 23
000d84  93810100  seteq r3, r3, zero
000d88  13020200  seteq r4, r4, zero
000d8c  9b82f20f  andi r5, r5, 255
000d90  1b03f30f  andi r6, r6, 255
000d94  9bf2f20f  setlti r5, r5, 255
000d98  1b73f30f  setlti r6, r6, 255
000d9c  97913200  or r3, r5, r3
000da0  17124300  or r4, r6, r4
000da4  97013200  and r3, r4, r3
000da8  b7bc010c  beq r3, zero, 6956
000dac  e3024ffe  loadli.w r5,  -224(r30)
000db0  bb4c0d0c  bneq r26, zero, 6960
000db4  37a00b00  beq r23, zero, 8
000db8  9f0b0d00  addli r23, r26, 0
000dbc  93611006  setle.f r3, zero, r1
000dc0  13e20006  setle.f r4, r1, zero
000dc4  97013200  and r3, r4, r3
000dc8  3ba00100  bneq r3, zero, 8
000dcc  9f8b0000  addli r23, r1, 0
000dd0  93e17205  setlt.f r3, r5, r23
000dd4  9f800b00  addli r1, r23, 0
000dd8  3ba00100  bneq r3, zero, 8
000ddc  9f800200  addli r1, r5, 0
000de0  9bb19200  slli r3, r5, 9
000de4  1bb29b00  slli r4, r23, 9
000de8  9bc27201  srli r5, r5, 23
000dec  1bc37b01  srli r6, r23, 23
000df0  93810100  seteq r3, r3, zero
000df4  13020200  seteq r4, r4, zero
000df8  9b82f20f  andi r5, r5, 255
000dfc  1b03f30f  andi r6, r6, 255
000e00  9bf2f20f  setlti r5, r5, 255
000e04  1b73f30f  setlti r6, r6, 255
000e08  97913200  or r3, r5, r3
000e0c  17124300  or r4, r6, r4
000e10  97013200  and r3, r4, r3
000e14  37eb010c  beq r3, zero, 6872
000e18  3bfb0b0c  bneq r23, zero, 6876
000e1c  63034ffe  loadli.w r6,  -224(r30)
000e20  37200300  beq r6, zero, 8
000e24  1f830b00  addli r6, r23, 0
000e28  93611006  setle.f r3, zero, r1
000e2c  13e20006  setle.f r4, r1, zero
000e30  97013200  and r3, r4, r3
000e34  3ba00100  bneq r3, zero, 8
000e38  1f830000  addli r6, r1, 0
000e3c  93616704  setlt.f r3, r14, r6
000e40  9f000300  addli r1, r6, 0
000e44  3ba00100  bneq r3, zero, 8
000e48  9f000700  addli r1, r14, 0
000e4c  9b319700  slli r3, r14, 9
000e50  1b329300  slli r4, r6, 9
000e54  9b427701  srli r5, r14, 23
000e58  9f0b0300  addli r23, r6, 0
000e5c  1b437301  srli r6, r6, 23
000e60  93810100  seteq r3, r3, zero
000e64  13020200  seteq r4, r4, zero
000e68  9b82f20f  andi r5, r5, 255
000e6c  1b03f30f  andi r6, r6, 255
000e70  9bf2f20f  setlti r5, r5, 255
000e74  1b73f30f  setlti r6, r6, 255
000e78  97913200  or r3, r5, r3
000e7c  17124300  or r4, r6, r4
000e80  97013200  and r3, r4, r3
000e84  378a010c  beq r3, zero, 6784
000e88  e3424ffe  loadli.w r5,  -220(r30)
000e8c  3b9a0b0c  bneq r23, zero, 6788
000e90  37200700  beq r14, zero, 8
000e94  1f870b00  addli r14, r23, 0
000e98  93611006  setle.f r3, zero, r1
000e9c  13e20006  setle.f r4, r1, zero
000ea0  97013200  and r3, r4, r3
000ea4  3ba00100  bneq r3, zero, 8
000ea8  1f870000  addli r14, r1, 0
000eac  93e1e204  setlt.f r3, r5, r14
000eb0  9f000700  addli r1, r14, 0
000eb4  3ba00100  bneq r3, zero, 8
000eb8  9f800200  addli r1, r5, 0
000ebc  9bb19200  slli r3, r5, 9
000ec0  1b329700  slli r4, r14, 9
000ec4  9bc27201  srli r5, r5, 23
000ec8  1b437701  srli r6, r14, 23
000ecc  93810100  seteq r3, r3, zero
000ed0  13020200  seteq r4, r4, zero
000ed4  9b82f20f  andi r5, r5, 255
000ed8  1b03f30f  andi r6, r6, 255
000edc  9bf2f20f  setlti r5, r5, 255
000ee0  1b73f30f  setlti r6, r6, 255
000ee4  97913200  or r3, r5, r3
000ee8  17124300  or r4, r6, r4
000eec  97013200  and r3, r4, r3
000ef0  b7b8010c  beq r3, zero, 6700
000ef4  bb48070c  bneq r14, zero, 6704
000ef8  63434ffe  loadli.w r6,  -220(r30)
000efc  37200300  beq r6, zero, 8
000f00  1f030700  addli r6, r14, 0
000f04  93611006  setle.f r3, zero, r1
000f08  13e20006  setle.f r4, r1, zero
000f0c  97013200  and r3, r4, r3
000f10  3ba00100  bneq r3, zero, 8
000f14  1f830000  addli r6, r1, 0
000f18  93e16a04  setlt.f r3, r21, r6
000f1c  9f000300  addli r1, r6, 0
000f20  3ba00100  bneq r3, zero, 8
000f24  9f800a00  addli r1, r21, 0
000f28  9bb19a00  slli r3, r21, 9
000f2c  1b329300  slli r4, r6, 9
000f30  9bc27a01  srli r5, r21, 23
000f34  1f070300  addli r14, r6, 0
000f38  1b437301  srli r6, r6, 23
000f3c  93810100  seteq r3, r3, zero
000f40  13020200  seteq r4, r4, zero
000f44  9b82f20f  andi r5, r5, 255
000f48  1b03f30f  andi r6, r6, 255
000f4c  9bf2f20f  setlti r5, r5, 255
000f50  1b73f30f  setlti r6, r6, 255
000f54  97913200  or r3, r5, r3
000f58  17124300  or r4, r6, r4
000f5c  97013200  and r3, r4, r3
000f60  37d7010c  beq r3, zero, 6612
000f64  e3025ffe  loadli.w r5,  -216(r30)
000f68  3b67070c  bneq r14, zero, 6616
000f6c  37a00a00  beq r21, zero, 8
000f70  9f0a0700  addli r21, r14, 0
000f74  93611006  setle.f r3, zero, r1
000f78  13e20006  setle.f r4, r1, zero
000f7c  97013200  and r3, r4, r3
000f80  3ba00100  bneq r3, zero, 8
000f84  9f8a0000  addli r21, r1, 0
000f88  93e15205  setlt.f r3, r5, r21
000f8c  9f800a00  addli r1, r21, 0
000f90  3ba00100  bneq r3, zero, 8
000f94  9f800200  addli r1, r5, 0
000f98  9bb19200  slli r3, r5, 9
000f9c  1bb29a00  slli r4, r21, 9
000fa0  9bc27201  srli r5, r5, 23
000fa4  1bc37a01  srli r6, r21, 23
000fa8  93810100  seteq r3, r3, zero
000fac  13020200  seteq r4, r4, zero
000fb0  9b82f20f  andi r5, r5, 255
000fb4  1b03f30f  andi r6, r6, 255
000fb8  9bf2f20f  setlti r5, r5, 255
000fbc  1b73f30f  setlti r6, r6, 255
000fc0  97913200  or r3, r5, r3
000fc4  17124300  or r4, r6, r4
000fc8  97013200  and r3, r4, r3
000fcc  3ba00100  bneq r3, zero, 8
000fd0  ab00c07f  lui r1, 523264
000fd4  37a00a00  beq r21, zero, 8
000fd8  9f8a0000  addli r21, r1, 0
000fdc  9f810a00  addli r3, r21, 0
000fe0  e30afffc  loadli.w r21,  -392(r30)
000fe4  63035ffe  loadli.w r6,  -216(r30)
000fe8  37200300  beq r6, zero, 8
000fec  1f830100  addli r6, r3, 0
000ff0  93611006  setle.f r3, zero, r1
000ff4  13e20006  setle.f r4, r1, zero
000ff8  63072ffd  loadli.w r14,  -368(r30)
000ffc  97013200  and r3, r4, r3
001000  3ba00100  bneq r3, zero, 8
001004  1f830000  addli r6, r1, 0
001008  93616a04  setlt.f r3, r20, r6
00100c  634d2ffd  loadli.w r26,  -364(r30)
001010  9f000300  addli r1, r6, 0
001014  3ba00100  bneq r3, zero, 8
001018  9f000a00  addli r1, r20, 0
00101c  9b319a00  slli r3, r20, 9
001020  1b329300  slli r4, r6, 9
001024  9b427a01  srli r5, r20, 23
001028  9f0b0300  addli r23, r6, 0
00102c  1b437301  srli r6, r6, 23
001030  93810100  seteq r3, r3, zero
001034  13020200  seteq r4, r4, zero
001038  9b82f20f  andi r5, r5, 255
00103c  1b03f30f  andi r6, r6, 255
001040  9bf2f20f  setlti r5, r5, 255
001044  1b73f30f  setlti r6, r6, 255
001048  97913200  or r3, r5, r3
00104c  17124300  or r4, r6, r4
001050  97013200  and r3, r4, r3
001054  b7e3010c  beq r3, zero, 6392
001058  e3425ffe  loadli.w r5,  -212(r30)
00105c  bbf30b0c  bneq r23, zero, 6396
001060  37200a00  beq r20, zero, 8
001064  1f8a0b00  addli r20, r23, 0
001068  93611006  setle.f r3, zero, r1
00106c  13e20006  setle.f r4, r1, zero
001070  97013200  and r3, r4, r3
001074  3ba00100  bneq r3, zero, 8
001078  1f8a0000  addli r20, r1, 0
00107c  93e14205  setlt.f r3, r5, r20
001080  9f000a00  addli r1, r20, 0
001084  9f0b0d00  addli r23, r26, 0
001088  3ba00100  bneq r3, zero, 8
00108c  9f800200  addli r1, r5, 0
001090  9bb19200  slli r3, r5, 9
001094  1b329a00  slli r4, r20, 9
001098  9bc27201  srli r5, r5, 23
00109c  1b437a01  srli r6, r20, 23
0010a0  1f0d0700  addli r26, r14, 0
0010a4  93810100  seteq r3, r3, zero
0010a8  13020200  seteq r4, r4, zero
0010ac  9b82f20f  andi r5, r5, 255
0010b0  1b03f30f  andi r6, r6, 255
0010b4  9bf2f20f  setlti r5, r5, 255
0010b8  1b73f30f  setlti r6, r6, 255
0010bc  97913200  or r3, r5, r3
0010c0  17124300  or r4, r6, r4
0010c4  97013200  and r3, r4, r3
0010c8  37f2010c  beq r3, zero, 6300
0010cc  1f870a00  addli r14, r21, 0
0010d0  bb020a0c  bneq r20, zero, 6304
0010d4  63435ffe  loadli.w r6,  -212(r30)
0010d8  37200300  beq r6, zero, 8
0010dc  1f030a00  addli r6, r20, 0
0010e0  93611006  setle.f r3, zero, r1
0010e4  13e20006  setle.f r4, r1, zero
0010e8  97013200  and r3, r4, r3
0010ec  3ba00100  bneq r3, zero, 8
0010f0  1f830000  addli r6, r1, 0
0010f4  93616b04  setlt.f r3, r22, r6
0010f8  9f000300  addli r1, r6, 0
0010fc  3ba00100  bneq r3, zero, 8
001100  9f000b00  addli r1, r22, 0
001104  9b319b00  slli r3, r22, 9
001108  1b329300  slli r4, r6, 9
00110c  9b427b01  srli r5, r22, 23
001110  1f0a0300  addli r20, r6, 0
001114  1b437301  srli r6, r6, 23
001118  93810100  seteq r3, r3, zero
00111c  13020200  seteq r4, r4, zero
001120  9b82f20f  andi r5, r5, 255
001124  1b03f30f  andi r6, r6, 255
001128  9bf2f20f  setlti r5, r5, 255
00112c  1b73f30f  setlti r6, r6, 255
001130  97913200  or r3, r5, r3
001134  17124300  or r4, r6, r4
001138  97013200  and r3, r4, r3
00113c  3791010c  beq r3, zero, 6212
001140  e3026ffe  loadli.w r5,  -208(r30)
001144  3b210a0c  bneq r20, zero, 6216
001148  37200b00  beq r22, zero, 8
00114c  1f0b0a00  addli r22, r20, 0
001150  93611006  setle.f r3, zero, r1
001154  13e20006  setle.f r4, r1, zero
001158  97013200  and r3, r4, r3
00115c  3ba00100  bneq r3, zero, 8
001160  1f8b0000  addli r22, r1, 0
001164  93e16205  setlt.f r3, r5, r22
001168  634aeffc  loadli.w r20,  -396(r30)
00116c  9f000b00  addli r1, r22, 0
001170  3ba00100  bneq r3, zero, 8
001174  9f800200  addli r1, r5, 0
001178  9bb19200  slli r3, r5, 9
00117c  1b329b00  slli r4, r22, 9
001180  9bc27201  srli r5, r5, 23
001184  1b437b01  srli r6, r22, 23
001188  93810100  seteq r3, r3, zero
00118c  13020200  seteq r4, r4, zero
001190  9b82f20f  andi r5, r5, 255
001194  1b03f30f  andi r6, r6, 255
001198  9bf2f20f  setlti r5, r5, 255
00119c  1b73f30f  setlti r6, r6, 255
0011a0  97913200  or r3, r5, r3
0011a4  17124300  or r4, r6, r4
0011a8  97013200  and r3, r4, r3
0011ac  b7bf010a  beq r3, zero, 6124
0011b0  bb4f0b0a  bneq r22, zero, 6128
0011b4  63036ffe  loadli.w r6,  -208(r30)
0011b8  37200300  beq r6, zero, 8
0011bc  1f030b00  addli r6, r22, 0
0011c0  93611006  setle.f r3, zero, r1
0011c4  13e20006  setle.f r4, r1, zero
0011c8  97013200  and r3, r4, r3
0011cc  3ba00100  bneq r3, zero, 8
0011d0  1f830000  addli r6, r1, 0
0011d4  93e16504  setlt.f r3, r11, r6
0011d8  9f000300  addli r1, r6, 0
0011dc  3ba00100  bneq r3, zero, 8
0011e0  9f800500  addli r1, r11, 0
0011e4  9bb19500  slli r3, r11, 9
0011e8  1b329300  slli r4, r6, 9
0011ec  9bc27501  srli r5, r11, 23
0011f0  1f0b0300  addli r22, r6, 0
0011f4  1b437301  srli r6, r6, 23
0011f8  93810100  seteq r3, r3, zero
0011fc  13020200  seteq r4, r4, zero
001200  9b82f20f  andi r5, r5, 255
001204  1b03f30f  andi r6, r6, 255
001208  9bf2f20f  setlti r5, r5, 255
00120c  1b73f30f  setlti r6, r6, 255
001210  97913200  or r3, r5, r3
001214  17124300  or r4, r6, r4
001218  97013200  and r3, r4, r3
00121c  37de010a  beq r3, zero, 6036
001220  e3426ffe  loadli.w r5,  -204(r30)
001224  3b6e0b0a  bneq r22, zero, 6040
001228  37a00500  beq r11, zero, 8
00122c  9f050b00  addli r11, r22, 0
001230  93611006  setle.f r3, zero, r1
001234  13e20006  setle.f r4, r1, zero
001238  97013200  and r3, r4, r3
00123c  3ba00100  bneq r3, zero, 8
001240  9f850000  addli r11, r1, 0
001244  93e1b204  setlt.f r3, r5, r11
001248  9f800500  addli r1, r11, 0
00124c  3ba00100  bneq r3, zero, 8
001250  9f800200  addli r1, r5, 0
001254  9bb19200  slli r3, r5, 9
001258  1bb29500  slli r4, r11, 9
00125c  9bc27201  srli r5, r5, 23
001260  1bc37501  srli r6, r11, 23
001264  93810100  seteq r3, r3, zero
001268  13020200  seteq r4, r4, zero
00126c  9b82f20f  andi r5, r5, 255
001270  1b03f30f  andi r6, r6, 255
001274  9bf2f20f  setlti r5, r5, 255
001278  1b73f30f  setlti r6, r6, 255
00127c  97913200  or r3, r5, r3
001280  17124300  or r4, r6, r4
001284  97013200  and r3, r4, r3
001288  378d010a  beq r3, zero, 5952
00128c  3b9d050a  bneq r11, zero, 5956
001290  63436ffe  loadli.w r6,  -204(r30)
001294  37200300  beq r6, zero, 8
001298  1f830500  addli r6, r11, 0
00129c  93611006  setle.f r3, zero, r1
0012a0  13e20006  setle.f r4, r1, zero
0012a4  97013200  and r3, r4, r3
0012a8  3ba00100  bneq r3, zero, 8
0012ac  1f830000  addli r6, r1, 0
0012b0  93616604  setlt.f r3, r12, r6
0012b4  9f000300  addli r1, r6, 0
0012b8  3ba00100  bneq r3, zero, 8
0012bc  9f000600  addli r1, r12, 0
0012c0  9b319600  slli r3, r12, 9
0012c4  1b329300  slli r4, r6, 9
0012c8  9b427601  srli r5, r12, 23
0012cc  9f050300  addli r11, r6, 0
0012d0  1b437301  srli r6, r6, 23
0012d4  93810100  seteq r3, r3, zero
0012d8  13020200  seteq r4, r4, zero
0012dc  9b82f20f  andi r5, r5, 255
0012e0  1b03f30f  andi r6, r6, 255
0012e4  9bf2f20f  setlti r5, r5, 255
0012e8  1b73f30f  setlti r6, r6, 255
0012ec  97913200  or r3, r5, r3
0012f0  17124300  or r4, r6, r4
0012f4  97013200  and r3, r4, r3
0012f8  b7ab010a  beq r3, zero, 5864
0012fc  e3027ffe  loadli.w r5,  -200(r30)
001300  bbbb050a  bneq r11, zero, 5868
001304  37200600  beq r12, zero, 8
001308  1f860500  addli r12, r11, 0
00130c  93611006  setle.f r3, zero, r1
001310  13e20006  setle.f r4, r1, zero
001314  97013200  and r3, r4, r3
001318  3ba00100  bneq r3, zero, 8
00131c  1f860000  addli r12, r1, 0
001320  93e1c204  setlt.f r3, r5, r12
001324  9f000600  addli r1, r12, 0
001328  3ba00100  bneq r3, zero, 8
00132c  9f800200  addli r1, r5, 0
001330  9bb19200  slli r3, r5, 9
001334  1b329600  slli r4, r12, 9
001338  9bc27201  srli r5, r5, 23
00133c  1b437601  srli r6, r12, 23
001340  93810100  seteq r3, r3, zero
001344  13020200  seteq r4, r4, zero
001348  9b82f20f  andi r5, r5, 255
00134c  1b03f30f  andi r6, r6, 255
001350  9bf2f20f  setlti r5, r5, 255
001354  1b73f30f  setlti r6, r6, 255
001358  97913200  or r3, r5, r3
00135c  17124300  or r4, r6, r4
001360  97013200  and r3, r4, r3
001364  37da010a  beq r3, zero, 5780
001368  3b6a060a  bneq r12, zero, 5784
00136c  63037ffe  loadli.w r6,  -200(r30)
001370  37200300  beq r6, zero, 8
001374  1f030600  addli r6, r12, 0
001378  93611006  setle.f r3, zero, r1
00137c  13e20006  setle.f r4, r1, zero
001380  97013200  and r3, r4, r3
001384  3ba00100  bneq r3, zero, 8
001388  1f830000  addli r6, r1, 0
00138c  93e16604  setlt.f r3, r13, r6
001390  9f000300  addli r1, r6, 0
001394  3ba00100  bneq r3, zero, 8
001398  9f800600  addli r1, r13, 0
00139c  9bb19600  slli r3, r13, 9
0013a0  1b329300  slli r4, r6, 9
0013a4  9bc27601  srli r5, r13, 23
0013a8  1f060300  addli r12, r6, 0
0013ac  1b437301  srli r6, r6, 23
0013b0  93810100  seteq r3, r3, zero
0013b4  13020200  seteq r4, r4, zero
0013b8  9b82f20f  andi r5, r5, 255
0013bc  1b03f30f  andi r6, r6, 255
0013c0  9bf2f20f  setlti r5, r5, 255
0013c4  1b73f30f  setlti r6, r6, 255
0013c8  97913200  or r3, r5, r3
0013cc  17124300  or r4, r6, r4
0013d0  97013200  and r3, r4, r3
0013d4  b7f8010a  beq r3, zero, 5692
0013d8  e3427ffe  loadli.w r5,  -196(r30)
0013dc  3b09060a  bneq r12, zero, 5696
0013e0  37a00600  beq r13, zero, 8
0013e4  9f060600  addli r13, r12, 0
0013e8  93611006  setle.f r3, zero, r1
0013ec  13e20006  setle.f r4, r1, zero
0013f0  97013200  and r3, r4, r3
0013f4  3ba00100  bneq r3, zero, 8
0013f8  9f860000  addli r13, r1, 0
0013fc  93e1d204  setlt.f r3, r5, r13
001400  9f800600  addli r1, r13, 0
001404  3ba00100  bneq r3, zero, 8
001408  9f800200  addli r1, r5, 0
00140c  9bb19200  slli r3, r5, 9
001410  1bb29600  slli r4, r13, 9
001414  9bc27201  srli r5, r5, 23
001418  1bc37601  srli r6, r13, 23
00141c  93810100  seteq r3, r3, zero
001420  13020200  seteq r4, r4, zero
001424  9b82f20f  andi r5, r5, 255
001428  1b03f30f  andi r6, r6, 255
00142c  9bf2f20f  setlti r5, r5, 255
001430  1b73f30f  setlti r6, r6, 255
001434  97913200  or r3, r5, r3
001438  17124300  or r4, r6, r4
00143c  97013200  and r3, r4, r3
001440  b7a7010a  beq r3, zero, 5608
001444  bbb7060a  bneq r13, zero, 5612
001448  63437ffe  loadli.w r6,  -196(r30)
00144c  37200300  beq r6, zero, 8
001450  1f830600  addli r6, r13, 0
001454  93611006  setle.f r3, zero, r1
001458  13e20006  setle.f r4, r1, zero
00145c  97013200  and r3, r4, r3
001460  3ba00100  bneq r3, zero, 8
001464  1f830000  addli r6, r1, 0
001468  93e16d04  setlt.f r3, r27, r6
00146c  9f000300  addli r1, r6, 0
001470  3ba00100  bneq r3, zero, 8
001474  9f800d00  addli r1, r27, 0
001478  9bb19d00  slli r3, r27, 9
00147c  1b329300  slli r4, r6, 9
001480  9bc27d01  srli r5, r27, 23
001484  9f060300  addli r13, r6, 0
001488  1b437301  srli r6, r6, 23
00148c  93810100  seteq r3, r3, zero
001490  13020200  seteq r4, r4, zero
001494  9b82f20f  andi r5, r5, 255
001498  1b03f30f  andi r6, r6, 255
00149c  9bf2f20f  setlti r5, r5, 255
0014a0  1b73f30f  setlti r6, r6, 255
0014a4  97913200  or r3, r5, r3
0014a8  17124300  or r4, r6, r4
0014ac  97013200  and r3, r4, r3
0014b0  37c6010a  beq r3, zero, 5520
0014b4  e3028ffe  loadli.w r5,  -192(r30)
0014b8  3bd6060a  bneq r13, zero, 5524
0014bc  37a00d00  beq r27, zero, 8
0014c0  9f8d0600  addli r27, r13, 0
0014c4  93611006  setle.f r3, zero, r1
0014c8  13e20006  setle.f r4, r1, zero
0014cc  97013200  and r3, r4, r3
0014d0  3ba00100  bneq r3, zero, 8
0014d4  9f8d0000  addli r27, r1, 0
0014d8  93e1b205  setlt.f r3, r5, r27
0014dc  9f800d00  addli r1, r27, 0
0014e0  3ba00100  bneq r3, zero, 8
0014e4  9f800200  addli r1, r5, 0
0014e8  9bb19200  slli r3, r5, 9
0014ec  1bb29d00  slli r4, r27, 9
0014f0  9bc27201  srli r5, r5, 23
0014f4  1bc37d01  srli r6, r27, 23
0014f8  93810100  seteq r3, r3, zero
0014fc  13020200  seteq r4, r4, zero
001500  9b82f20f  andi r5, r5, 255
001504  1b03f30f  andi r6, r6, 255
001508  9bf2f20f  setlti r5, r5, 255
00150c  1b73f30f  setlti r6, r6, 255
001510  97913200  or r3, r5, r3
001514  17124300  or r4, r6, r4
001518  97013200  and r3, r4, r3
00151c  3ba00100  bneq r3, zero, 8
001520  ab00c07f  lui r1, 523264
001524  37a00d00  beq r27, zero, 8
001528  9f8d0000  addli r27, r1, 0
00152c  9f810d00  addli r3, r27, 0
001530  e34d4ffd  loadli.w r27,  -348(r30)
001534  63038ffe  loadli.w r6,  -192(r30)
001538  37200300  beq r6, zero, 8
00153c  1f830100  addli r6, r3, 0
001540  93611006  setle.f r3, zero, r1
001544  13e20006  setle.f r4, r1, zero
001548  63065ffd  loadli.w r12,  -344(r30)
00154c  97013200  and r3, r4, r3
001550  3ba00100  bneq r3, zero, 8
001554  1f830000  addli r6, r1, 0
001558  93616404  setlt.f r3, r8, r6
00155c  e3054ffd  loadli.w r11,  -352(r30)
001560  9f000300  addli r1, r6, 0
001564  3ba00100  bneq r3, zero, 8
001568  9f000400  addli r1, r8, 0
00156c  9b319400  slli r3, r8, 9
001570  1b329300  slli r4, r6, 9
001574  9b427401  srli r5, r8, 23
001578  9f060300  addli r13, r6, 0
00157c  1b437301  srli r6, r6, 23
001580  93810100  seteq r3, r3, zero
001584  13020200  seteq r4, r4, zero
001588  9b82f20f  andi r5, r5, 255
00158c  1b03f30f  andi r6, r6, 255
001590  9bf2f20f  setlti r5, r5, 255
001594  1b73f30f  setlti r6, r6, 255
001598  97913200  or r3, r5, r3
00159c  17124300  or r4, r6, r4
0015a0  97013200  and r3, r4, r3
0015a4  b7d2010a  beq r3, zero, 5300
0015a8  e3428ffe  loadli.w r5,  -188(r30)
0015ac  bbe2060a  bneq r13, zero, 5304
0015b0  37200400  beq r8, zero, 8
0015b4  1f840600  addli r8, r13, 0
0015b8  93611006  setle.f r3, zero, r1
0015bc  13e20006  setle.f r4, r1, zero
0015c0  97013200  and r3, r4, r3
0015c4  3ba00100  bneq r3, zero, 8
0015c8  1f840000  addli r8, r1, 0
0015cc  93e18204  setlt.f r3, r5, r8
0015d0  9f000400  addli r1, r8, 0
0015d4  9f860500  addli r13, r11, 0
0015d8  3ba00100  bneq r3, zero, 8
0015dc  9f800200  addli r1, r5, 0
0015e0  9bb19200  slli r3, r5, 9
0015e4  1b329400  slli r4, r8, 9
0015e8  9bc27201  srli r5, r5, 23
0015ec  1b437401  srli r6, r8, 23
0015f0  9f050600  addli r11, r12, 0
0015f4  93810100  seteq r3, r3, zero
0015f8  13020200  seteq r4, r4, zero
0015fc  9b82f20f  andi r5, r5, 255
001600  1b03f30f  andi r6, r6, 255
001604  9bf2f20f  setlti r5, r5, 255
001608  1b73f30f  setlti r6, r6, 255
00160c  97913200  or r3, r5, r3
001610  17124300  or r4, r6, r4
001614  97013200  and r3, r4, r3
001618  37e1010a  beq r3, zero, 5208
00161c  1f860d00  addli r12, r27, 0
001620  3b71040a  bneq r8, zero, 5212
001624  63438ffe  loadli.w r6,  -188(r30)
001628  37200300  beq r6, zero, 8
00162c  1f030400  addli r6, r8, 0
001630  93611006  setle.f r3, zero, r1
001634  13e20006  setle.f r4, r1, zero
001638  97013200  and r3, r4, r3
00163c  3ba00100  bneq r3, zero, 8
001640  1f830000  addli r6, r1, 0
001644  93e16404  setlt.f r3, r9, r6
001648  9f000300  addli r1, r6, 0
00164c  3ba00100  bneq r3, zero, 8
001650  9f800400  addli r1, r9, 0
001654  9bb19400  slli r3, r9, 9
001658  1b329300  slli r4, r6, 9
00165c  9bc27401  srli r5, r9, 23
001660  1f040300  addli r8, r6, 0
001664  1b437301  srli r6, r6, 23
001668  93810100  seteq r3, r3, zero
00166c  13020200  seteq r4, r4, zero
001670  9b82f20f  andi r5, r5, 255
001674  1b03f30f  andi r6, r6, 255
001678  9bf2f20f  setlti r5, r5, 255
00167c  1b73f30f  setlti r6, r6, 255
001680  97913200  or r3, r5, r3
001684  17124300  or r4, r6, r4
001688  97013200  and r3, r4, r3
00168c  3780010a  beq r3, zero, 5120
001690  e3029ffe  loadli.w r5,  -184(r30)
001694  3b10040a  bneq r8, zero, 5124
001698  37a00400  beq r9, zero, 8
00169c  9f040400  addli r9, r8, 0
0016a0  93611006  setle.f r3, zero, r1
0016a4  13e20006  setle.f r4, r1, zero
0016a8  97013200  and r3, r4, r3
0016ac  3ba00100  bneq r3, zero, 8
0016b0  9f840000  addli r9, r1, 0
0016b4  93e19204  setlt.f r3, r5, r9
0016b8  63040ffd  loadli.w r8,  -384(r30)
0016bc  9f800400  addli r1, r9, 0
0016c0  3ba00100  bneq r3, zero, 8
0016c4  9f800200  addli r1, r5, 0
0016c8  9bb19200  slli r3, r5, 9
0016cc  1bb29400  slli r4, r9, 9
0016d0  9bc27201  srli r5, r5, 23
0016d4  1bc37401  srli r6, r9, 23
0016d8  93810100  seteq r3, r3, zero
0016dc  13020200  seteq r4, r4, zero
0016e0  9b82f20f  andi r5, r5, 255
0016e4  1b03f30f  andi r6, r6, 255
0016e8  9bf2f20f  setlti r5, r5, 255
0016ec  1b73f30f  setlti r6, r6, 255
0016f0  97913200  or r3, r5, r3
0016f4  17124300  or r4, r6, r4
0016f8  97013200  and r3, r4, r3
0016fc  b7ae0108  beq r3, zero, 5032
001700  bbbe0408  bneq r9, zero, 5036
001704  63039ffe  loadli.w r6,  -184(r30)
001708  37200300  beq r6, zero, 8
00170c  1f830400  addli r6, r9, 0
001710  93611006  setle.f r3, zero, r1
001714  13e20006  setle.f r4, r1, zero
001718  97013200  and r3, r4, r3
00171c  3ba00100  bneq r3, zero, 8
001720  1f830000  addli r6, r1, 0
001724  93616504  setlt.f r3, r10, r6
001728  9f000300  addli r1, r6, 0
00172c  3ba00100  bneq r3, zero, 8
001730  9f000500  addli r1, r10, 0
001734  9b319500  slli r3, r10, 9
001738  1b329300  slli r4, r6, 9
00173c  9b427501  srli r5, r10, 23
001740  9f040300  addli r9, r6, 0
001744  1b437301  srli r6, r6, 23
001748  93810100  seteq r3, r3, zero
00174c  13020200  seteq r4, r4, zero
001750  9b82f20f  andi r5, r5, 255
001754  1b03f30f  andi r6, r6, 255
001758  9bf2f20f  setlti r5, r5, 255
00175c  1b73f30f  setlti r6, r6, 255
001760  97913200  or r3, r5, r3
001764  17124300  or r4, r6, r4
001768  97013200  and r3, r4, r3
00176c  37cd0108  beq r3, zero, 4944
001770  e3429ffe  loadli.w r5,  -180(r30)
001774  3bdd0408  bneq r9, zero, 4948
001778  37200500  beq r10, zero, 8
00177c  1f850400  addli r10, r9, 0
001780  93611006  setle.f r3, zero, r1
001784  13e20006  setle.f r4, r1, zero
001788  97013200  and r3, r4, r3
00178c  3ba00100  bneq r3, zero, 8
001790  1f850000  addli r10, r1, 0
001794  93e1a204  setlt.f r3, r5, r10
001798  e3440ffd  loadli.w r9,  -380(r30)
00179c  9f000500  addli r1, r10, 0
0017a0  3ba00100  bneq r3, zero, 8
0017a4  9f800200  addli r1, r5, 0
0017a8  9bb19200  slli r3, r5, 9
0017ac  1b329500  slli r4, r10, 9
0017b0  9bc27201  srli r5, r5, 23
0017b4  1b437501  srli r6, r10, 23
0017b8  93810100  seteq r3, r3, zero
0017bc  13020200  seteq r4, r4, zero
0017c0  9b82f20f  andi r5, r5, 255
0017c4  1b03f30f  andi r6, r6, 255
0017c8  9bf2f20f  setlti r5, r5, 255
0017cc  1b73f30f  setlti r6, r6, 255
0017d0  97913200  or r3, r5, r3
0017d4  17124300  or r4, r6, r4
0017d8  97013200  and r3, r4, r3
0017dc  b7eb0108  beq r3, zero, 4856
0017e0  bb7b0508  bneq r10, zero, 4860
0017e4  63439ffe  loadli.w r6,  -180(r30)
0017e8  37200300  beq r6, zero, 8
0017ec  1f030500  addli r6, r10, 0
0017f0  93611006  setle.f r3, zero, r1
0017f4  13e20006  setle.f r4, r1, zero
0017f8  97013200  and r3, r4, r3
0017fc  3ba00100  bneq r3, zero, 8
001800  1f830000  addli r6, r1, 0
001804  93616e04  setlt.f r3, r28, r6
001808  9f000300  addli r1, r6, 0
00180c  3ba00100  bneq r3, zero, 8
001810  9f000e00  addli r1, r28, 0
001814  9b319e00  slli r3, r28, 9
001818  1b329300  slli r4, r6, 9
00181c  9b427e01  srli r5, r28, 23
001820  1f050300  addli r10, r6, 0
001824  1b437301  srli r6, r6, 23
001828  93810100  seteq r3, r3, zero
00182c  13020200  seteq r4, r4, zero
001830  9b82f20f  andi r5, r5, 255
001834  1b03f30f  andi r6, r6, 255
001838  9bf2f20f  setlti r5, r5, 255
00183c  1b73f30f  setlti r6, r6, 255
001840  97913200  or r3, r5, r3
001844  17124300  or r4, r6, r4
001848  97013200  and r3, r4, r3
00184c  b78a0108  beq r3, zero, 4768
001850  e302affe  loadli.w r5,  -176(r30)
001854  bb1a0508  bneq r10, zero, 4772
001858  37200e00  beq r28, zero, 8
00185c  1f0e0500  addli r28, r10, 0
001860  93611006  setle.f r3, zero, r1
001864  13e20006  setle.f r4, r1, zero
001868  97013200  and r3, r4, r3
00186c  3ba00100  bneq r3, zero, 8
001870  1f8e0000  addli r28, r1, 0
001874  93e1c205  setlt.f r3, r5, r28
001878  6345fffc  loadli.w r10,  -388(r30)
00187c  9f000e00  addli r1, r28, 0
001880  3ba00100  bneq r3, zero, 8
001884  9f800200  addli r1, r5, 0
001888  9bb19200  slli r3, r5, 9
00188c  1b329e00  slli r4, r28, 9
001890  9bc27201  srli r5, r5, 23
001894  1b437e01  srli r6, r28, 23
001898  93810100  seteq r3, r3, zero
00189c  13020200  seteq r4, r4, zero
0018a0  9b82f20f  andi r5, r5, 255
0018a4  1b03f30f  andi r6, r6, 255
0018a8  9bf2f20f  setlti r5, r5, 255
0018ac  1b73f30f  setlti r6, r6, 255
0018b0  97913200  or r3, r5, r3
0018b4  17124300  or r4, r6, r4
0018b8  97013200  and r3, r4, r3
0018bc  37a90108  beq r3, zero, 4680
0018c0  3b390e08  bneq r28, zero, 4684
0018c4  6303affe  loadli.w r6,  -176(r30)
0018c8  37200300  beq r6, zero, 8
0018cc  1f030e00  addli r6, r28, 0
0018d0  93611006  setle.f r3, zero, r1
0018d4  13e20006  setle.f r4, r1, zero
0018d8  97013200  and r3, r4, r3
0018dc  3ba00100  bneq r3, zero, 8
0018e0  1f830000  addli r6, r1, 0
0018e4  93616a04  setlt.f r3, r20, r6
0018e8  9f000300  addli r1, r6, 0
0018ec  3ba00100  bneq r3, zero, 8
0018f0  9f000a00  addli r1, r20, 0
0018f4  9b319a00  slli r3, r20, 9
0018f8  1b329300  slli r4, r6, 9
0018fc  9b427a01  srli r5, r20, 23
001900  1f0e0300  addli r28, r6, 0
001904  1b437301  srli r6, r6, 23
001908  93810100  seteq r3, r3, zero
00190c  13020200  seteq r4, r4, zero
001910  9b82f20f  andi r5, r5, 255
001914  1b03f30f  andi r6, r6, 255
001918  9bf2f20f  setlti r5, r5, 255
00191c  1b73f30f  setlti r6, r6, 255
001920  97913200  or r3, r5, r3
001924  17124300  or r4, r6, r4
001928  97013200  and r3, r4, r3
00192c  b7c70108  beq r3, zero, 4592
001930  e342affe  loadli.w r5,  -172(r30)
001934  bb570e08  bneq r28, zero, 4596
001938  37200a00  beq r20, zero, 8
00193c  1f0a0e00  addli r20, r28, 0
001940  93611006  setle.f r3, zero, r1
001944  13e20006  setle.f r4, r1, zero
001948  97013200  and r3, r4, r3
00194c  3ba00100  bneq r3, zero, 8
001950  1f8a0000  addli r20, r1, 0
001954  93e14205  setlt.f r3, r5, r20
001958  9f000a00  addli r1, r20, 0
00195c  3ba00100  bneq r3, zero, 8
001960  9f800200  addli r1, r5, 0
001964  9bb19200  slli r3, r5, 9
001968  1b329a00  slli r4, r20, 9
00196c  9bc27201  srli r5, r5, 23
001970  1b437a01  srli r6, r20, 23
001974  93810100  seteq r3, r3, zero
001978  13020200  seteq r4, r4, zero
00197c  9b82f20f  andi r5, r5, 255
001980  1b03f30f  andi r6, r6, 255
001984  9bf2f20f  setlti r5, r5, 255
001988  1b73f30f  setlti r6, r6, 255
00198c  97913200  or r3, r5, r3
001990  17124300  or r4, r6, r4
001994  97013200  and r3, r4, r3
001998  37f60108  beq r3, zero, 4508
00199c  bb060a08  bneq r20, zero, 4512
0019a0  6343affe  loadli.w r6,  -172(r30)
0019a4  37200300  beq r6, zero, 8
0019a8  1f030a00  addli r6, r20, 0
0019ac  93611006  setle.f r3, zero, r1
0019b0  13e20006  setle.f r4, r1, zero
0019b4  97013200  and r3, r4, r3
0019b8  3ba00100  bneq r3, zero, 8
0019bc  1f830000  addli r6, r1, 0
0019c0  93616704  setlt.f r3, r14, r6
0019c4  9f000300  addli r1, r6, 0
0019c8  3ba00100  bneq r3, zero, 8
0019cc  9f000700  addli r1, r14, 0
0019d0  9b319700  slli r3, r14, 9
0019d4  1b329300  slli r4, r6, 9
0019d8  9b427701  srli r5, r14, 23
0019dc  9f0a0300  addli r21, r6, 0
0019e0  1b437301  srli r6, r6, 23
0019e4  93810100  seteq r3, r3, zero
0019e8  13020200  seteq r4, r4, zero
0019ec  9b82f20f  andi r5, r5, 255
0019f0  1b03f30f  andi r6, r6, 255
0019f4  9bf2f20f  setlti r5, r5, 255
0019f8  1b73f30f  setlti r6, r6, 255
0019fc  97913200  or r3, r5, r3
001a00  17124300  or r4, r6, r4
001a04  97013200  and r3, r4, r3
001a08  37950108  beq r3, zero, 4420
001a0c  e302bffe  loadli.w r5,  -168(r30)
001a10  3ba50a08  bneq r21, zero, 4424
001a14  37200700  beq r14, zero, 8
001a18  1f870a00  addli r14, r21, 0
001a1c  93611006  setle.f r3, zero, r1
001a20  13e20006  setle.f r4, r1, zero
001a24  97013200  and r3, r4, r3
001a28  3ba00100  bneq r3, zero, 8
001a2c  1f870000  addli r14, r1, 0
001a30  93e1e204  setlt.f r3, r5, r14
001a34  9f000700  addli r1, r14, 0
001a38  3ba00100  bneq r3, zero, 8
001a3c  9f800200  addli r1, r5, 0
001a40  9bb19200  slli r3, r5, 9
001a44  1b329700  slli r4, r14, 9
001a48  9bc27201  srli r5, r5, 23
001a4c  1b437701  srli r6, r14, 23
001a50  93810100  seteq r3, r3, zero
001a54  13020200  seteq r4, r4, zero
001a58  9b82f20f  andi r5, r5, 255
001a5c  1b03f30f  andi r6, r6, 255
001a60  9bf2f20f  setlti r5, r5, 255
001a64  1b73f30f  setlti r6, r6, 255
001a68  97913200  or r3, r5, r3
001a6c  17124300  or r4, r6, r4
001a70  97013200  and r3, r4, r3
001a74  b7c30108  beq r3, zero, 4336
001a78  bb530708  bneq r14, zero, 4340
001a7c  6303bffe  loadli.w r6,  -168(r30)
001a80  37200300  beq r6, zero, 8
001a84  1f030700  addli r6, r14, 0
001a88  93611006  setle.f r3, zero, r1
001a8c  13e20006  setle.f r4, r1, zero
001a90  97013200  and r3, r4, r3
001a94  3ba00100  bneq r3, zero, 8
001a98  1f830000  addli r6, r1, 0
001a9c  93616504  setlt.f r3, r10, r6
001aa0  9f000300  addli r1, r6, 0
001aa4  3ba00100  bneq r3, zero, 8
001aa8  9f000500  addli r1, r10, 0
001aac  9b319500  slli r3, r10, 9
001ab0  1b329300  slli r4, r6, 9
001ab4  9b427501  srli r5, r10, 23
001ab8  1f070300  addli r14, r6, 0
001abc  1b437301  srli r6, r6, 23
001ac0  93810100  seteq r3, r3, zero
001ac4  13020200  seteq r4, r4, zero
001ac8  9b82f20f  andi r5, r5, 255
001acc  1b03f30f  andi r6, r6, 255
001ad0  9bf2f20f  setlti r5, r5, 255
001ad4  1b73f30f  setlti r6, r6, 255
001ad8  97913200  or r3, r5, r3
001adc  17124300  or r4, r6, r4
001ae0  97013200  and r3, r4, r3
001ae4  37e20108  beq r3, zero, 4248
001ae8  e302cffe  loadli.w r5,  -160(r30)
001aec  3b720708  bneq r14, zero, 4252
001af0  37200500  beq r10, zero, 8
001af4  1f050700  addli r10, r14, 0
001af8  93611006  setle.f r3, zero, r1
001afc  13e20006  setle.f r4, r1, zero
001b00  97013200  and r3, r4, r3
001b04  3ba00100  bneq r3, zero, 8
001b08  1f850000  addli r10, r1, 0
001b0c  93e1a204  setlt.f r3, r5, r10
001b10  9f000500  addli r1, r10, 0
001b14  3ba00100  bneq r3, zero, 8
001b18  9f800200  addli r1, r5, 0
001b1c  9bb19200  slli r3, r5, 9
001b20  1b329500  slli r4, r10, 9
001b24  9bc27201  srli r5, r5, 23
001b28  1b437501  srli r6, r10, 23
001b2c  93810100  seteq r3, r3, zero
001b30  13020200  seteq r4, r4, zero
001b34  9b82f20f  andi r5, r5, 255
001b38  1b03f30f  andi r6, r6, 255
001b3c  9bf2f20f  setlti r5, r5, 255
001b40  1b73f30f  setlti r6, r6, 255
001b44  97913200  or r3, r5, r3
001b48  17124300  or r4, r6, r4
001b4c  97013200  and r3, r4, r3
001b50  37910108  beq r3, zero, 4164
001b54  3b210508  bneq r10, zero, 4168
001b58  6303cffe  loadli.w r6,  -160(r30)
001b5c  37200300  beq r6, zero, 8
001b60  1f030500  addli r6, r10, 0
001b64  93611006  setle.f r3, zero, r1
001b68  13e20006  setle.f r4, r1, zero
001b6c  97013200  and r3, r4, r3
001b70  3ba00100  bneq r3, zero, 8
001b74  1f830000  addli r6, r1, 0
001b78  93616404  setlt.f r3, r8, r6
001b7c  9f000300  addli r1, r6, 0
001b80  3ba00100  bneq r3, zero, 8
001b84  9f000400  addli r1, r8, 0
001b88  9b319400  slli r3, r8, 9
001b8c  1b329300  slli r4, r6, 9
001b90  9b427401  srli r5, r8, 23
001b94  1f0a0300  addli r20, r6, 0
001b98  1b437301  srli r6, r6, 23
001b9c  93810100  seteq r3, r3, zero
001ba0  13020200  seteq r4, r4, zero
001ba4  9b82f20f  andi r5, r5, 255
001ba8  1b03f30f  andi r6, r6, 255
001bac  9bf2f20f  setlti r5, r5, 255
001bb0  1b73f30f  setlti r6, r6, 255
001bb4  97913200  or r3, r5, r3
001bb8  17124300  or r4, r6, r4
001bbc  97013200  and r3, r4, r3
001bc0  b7bf0106  beq r3, zero, 4076
001bc4  bb4f0a06  bneq r20, zero, 4080
001bc8  37200400  beq r8, zero, 8
001bcc  1f040a00  addli r8, r20, 0
001bd0  93611006  setle.f r3, zero, r1
001bd4  13e20006  setle.f r4, r1, zero
001bd8  97013200  and r3, r4, r3
001bdc  3ba00100  bneq r3, zero, 8
001be0  1f840000  addli r8, r1, 0
001be4  93e18404  setlt.f r3, r9, r8
001be8  9f000400  addli r1, r8, 0
001bec  3ba00100  bneq r3, zero, 8
001bf0  9f800400  addli r1, r9, 0
001bf4  9bb19400  slli r3, r9, 9
001bf8  1b329400  slli r4, r8, 9
001bfc  9bc27401  srli r5, r9, 23
001c00  1b437401  srli r6, r8, 23
001c04  93810100  seteq r3, r3, zero
001c08  13020200  seteq r4, r4, zero
001c0c  9b82f20f  andi r5, r5, 255
001c10  1b03f30f  andi r6, r6, 255
001c14  9bf2f20f  setlti r5, r5, 255
001c18  1b73f30f  setlti r6, r6, 255
001c1c  97913200  or r3, r5, r3
001c20  17124300  or r4, r6, r4
001c24  97013200  and r3, r4, r3
001c28  37ee0106  beq r3, zero, 3992
001c2c  e342cffe  loadli.w r5,  -156(r30)
001c30  3b7e0406  bneq r8, zero, 3996
001c34  37a00400  beq r9, zero, 8
001c38  9f040400  addli r9, r8, 0
001c3c  93611006  setle.f r3, zero, r1
001c40  13e20006  setle.f r4, r1, zero
001c44  97013200  and r3, r4, r3
001c48  3ba00100  bneq r3, zero, 8
001c4c  9f840000  addli r9, r1, 0
001c50  93e19204  setlt.f r3, r5, r9
001c54  9f800400  addli r1, r9, 0
001c58  3ba00100  bneq r3, zero, 8
001c5c  9f800200  addli r1, r5, 0
001c60  9bb19200  slli r3, r5, 9
001c64  1bb29400  slli r4, r9, 9
001c68  9bc27201  srli r5, r5, 23
001c6c  1bc37401  srli r6, r9, 23
001c70  93810100  seteq r3, r3, zero
001c74  13020200  seteq r4, r4, zero
001c78  9b82f20f  andi r5, r5, 255
001c7c  1b03f30f  andi r6, r6, 255
001c80  9bf2f20f  setlti r5, r5, 255
001c84  1b73f30f  setlti r6, r6, 255
001c88  97913200  or r3, r5, r3
001c8c  17124300  or r4, r6, r4
001c90  97013200  and r3, r4, r3
001c94  379d0106  beq r3, zero, 3908
001c98  e302dffe  loadli.w r5,  -152(r30)
001c9c  3bad0406  bneq r9, zero, 3912
001ca0  6343cffe  loadli.w r6,  -156(r30)
001ca4  37200300  beq r6, zero, 8
001ca8  1f830400  addli r6, r9, 0
001cac  93611006  setle.f r3, zero, r1
001cb0  13e20006  setle.f r4, r1, zero
001cb4  e30d3ffd  loadli.w r27,  -360(r30)
001cb8  97013200  and r3, r4, r3
001cbc  3ba00100  bneq r3, zero, 8
001cc0  1f830000  addli r6, r1, 0
001cc4  93e16204  setlt.f r3, r5, r6
001cc8  634b5ffd  loadli.w r22,  -340(r30)
001ccc  9f000300  addli r1, r6, 0
001cd0  3ba00100  bneq r3, zero, 8
001cd4  9f800200  addli r1, r5, 0
001cd8  9bb19200  slli r3, r5, 9
001cdc  1b329300  slli r4, r6, 9
001ce0  9bc27201  srli r5, r5, 23
001ce4  9f0a0300  addli r21, r6, 0
001ce8  1b437301  srli r6, r6, 23
001cec  63056ffd  loadli.w r10,  -336(r30)
001cf0  93810100  seteq r3, r3, zero
001cf4  13020200  seteq r4, r4, zero
001cf8  9b82f20f  andi r5, r5, 255
001cfc  1b03f30f  andi r6, r6, 255
001d00  9bf2f20f  setlti r5, r5, 255
001d04  1b73f30f  setlti r6, r6, 255
001d08  97913200  or r3, r5, r3
001d0c  17124300  or r4, r6, r4
001d10  97013200  and r3, r4, r3
001d14  3ba00100  bneq r3, zero, 8
001d18  ab00c07f  lui r1, 523264
001d1c  e344bffe  loadli.w r9,  -164(r30)
001d20  37a00a00  beq r21, zero, 8
001d24  9f8a0000  addli r21, r1, 0
001d28  634e6ffd  loadli.w r28,  -332(r30)
001d2c  6303dffe  loadli.w r6,  -152(r30)
001d30  37200300  beq r6, zero, 8
001d34  1f830a00  addli r6, r21, 0
001d38  93611006  setle.f r3, zero, r1
001d3c  13e20006  setle.f r4, r1, zero
001d40  63447ffd  loadli.w r8,  -324(r30)
001d44  97013200  and r3, r4, r3
001d48  3ba00100  bneq r3, zero, 8
001d4c  1f830000  addli r6, r1, 0
001d50  e30a1ffd  loadli.w r21,  -376(r30)
001d54  63077ffd  loadli.w r14,  -328(r30)
001d58  9f000300  addli r1, r6, 0
001d5c  93e16a04  setlt.f r3, r21, r6
001d60  3ba00100  bneq r3, zero, 8
001d64  9f800a00  addli r1, r21, 0
001d68  9bb19a00  slli r3, r21, 9
001d6c  1b329300  slli r4, r6, 9
001d70  9bc27a01  srli r5, r21, 23
001d74  1f0a0300  addli r20, r6, 0
001d78  1b437301  srli r6, r6, 23
001d7c  93810100  seteq r3, r3, zero
001d80  13020200  seteq r4, r4, zero
001d84  9b82f20f  andi r5, r5, 255
001d88  1b03f30f  andi r6, r6, 255
001d8c  9bf2f20f  setlti r5, r5, 255
001d90  1b73f30f  setlti r6, r6, 255
001d94  97913200  or r3, r5, r3
001d98  17124300  or r4, r6, r4
001d9c  97013200  and r3, r4, r3
001da0  37d90106  beq r3, zero, 3668
001da4  3b690a06  bneq r20, zero, 3672
001da8  37a00a00  beq r21, zero, 8
001dac  9f0a0a00  addli r21, r20, 0
001db0  93611006  setle.f r3, zero, r1
001db4  13e20006  setle.f r4, r1, zero
001db8  97013200  and r3, r4, r3
001dbc  3ba00100  bneq r3, zero, 8
001dc0  9f8a0000  addli r21, r1, 0
001dc4  93615d05  setlt.f r3, r26, r21
001dc8  9f800a00  addli r1, r21, 0
001dcc  1f0a0700  addli r20, r14, 0
001dd0  3ba00100  bneq r3, zero, 8
001dd4  9f000d00  addli r1, r26, 0
001dd8  9b319d00  slli r3, r26, 9
001ddc  1bb29a00  slli r4, r21, 9
001de0  9b427d01  srli r5, r26, 23
001de4  1bc37a01  srli r6, r21, 23
001de8  1f070400  addli r14, r8, 0
001dec  93810100  seteq r3, r3, zero
001df0  13020200  seteq r4, r4, zero
001df4  9b82f20f  andi r5, r5, 255
001df8  1b03f30f  andi r6, r6, 255
001dfc  9bf2f20f  setlti r5, r5, 255
001e00  1b73f30f  setlti r6, r6, 255
001e04  97913200  or r3, r5, r3
001e08  17124300  or r4, r6, r4
001e0c  97013200  and r3, r4, r3
001e10  b7e70106  beq r3, zero, 3576
001e14  1f040e00  addli r8, r28, 0
001e18  bbf70a06  bneq r21, zero, 3580
001e1c  1f8e0400  addli r28, r9, 0
001e20  37200d00  beq r26, zero, 8
001e24  1f8d0a00  addli r26, r21, 0
001e28  93611006  setle.f r3, zero, r1
001e2c  13e20006  setle.f r4, r1, zero
001e30  9f040500  addli r9, r10, 0
001e34  97013200  and r3, r4, r3
001e38  3ba00100  bneq r3, zero, 8
001e3c  1f8d0000  addli r26, r1, 0
001e40  93e1ab05  setlt.f r3, r23, r26
001e44  e34a1ffd  loadli.w r21,  -372(r30)
001e48  9f000d00  addli r1, r26, 0
001e4c  1f050b00  addli r10, r22, 0
001e50  3ba00100  bneq r3, zero, 8
001e54  9f800b00  addli r1, r23, 0
001e58  9bb19b00  slli r3, r23, 9
001e5c  1b329d00  slli r4, r26, 9
001e60  9bc27b01  srli r5, r23, 23
001e64  1b437d01  srli r6, r26, 23
001e68  93810100  seteq r3, r3, zero
001e6c  13020200  seteq r4, r4, zero
001e70  9b82f20f  andi r5, r5, 255
001e74  1b03f30f  andi r6, r6, 255
001e78  9bf2f20f  setlti r5, r5, 255
001e7c  1b73f30f  setlti r6, r6, 255
001e80  97913200  or r3, r5, r3
001e84  17124300  or r4, r6, r4
001e88  97013200  and r3, r4, r3
001e8c  37e60106  beq r3, zero, 3480
001e90  3b760d06  bneq r26, zero, 3484
001e94  37a00b00  beq r23, zero, 8
001e98  9f0b0d00  addli r23, r26, 0
001e9c  93611006  setle.f r3, zero, r1
001ea0  13e20006  setle.f r4, r1, zero
001ea4  97013200  and r3, r4, r3
001ea8  3ba00100  bneq r3, zero, 8
001eac  9f8b0000  addli r23, r1, 0
001eb0  93e17d05  setlt.f r3, r27, r23
001eb4  9f800b00  addli r1, r23, 0
001eb8  3ba00100  bneq r3, zero, 8
001ebc  9f800d00  addli r1, r27, 0
001ec0  9bb19d00  slli r3, r27, 9
001ec4  1bb29b00  slli r4, r23, 9
001ec8  9bc27d01  srli r5, r27, 23
001ecc  1bc37b01  srli r6, r23, 23
001ed0  93810100  seteq r3, r3, zero
001ed4  13020200  seteq r4, r4, zero
001ed8  9b82f20f  andi r5, r5, 255
001edc  1b03f30f  andi r6, r6, 255
001ee0  9bf2f20f  setlti r5, r5, 255
001ee4  1b73f30f  setlti r6, r6, 255
001ee8  97913200  or r3, r5, r3
001eec  17124300  or r4, r6, r4
001ef0  97013200  and r3, r4, r3
001ef4  37950106  beq r3, zero, 3396
001ef8  3ba50b06  bneq r23, zero, 3400
001efc  37a00d00  beq r27, zero, 8
001f00  9f8d0b00  addli r27, r23, 0
001f04  93611006  setle.f r3, zero, r1
001f08  13e20006  setle.f r4, r1, zero
001f0c  97013200  and r3, r4, r3
001f10  3ba00100  bneq r3, zero, 8
001f14  9f8d0000  addli r27, r1, 0
001f18  93e1ba05  setlt.f r3, r21, r27
001f1c  9f800d00  addli r1, r27, 0
001f20  3ba00100  bneq r3, zero, 8
001f24  9f800a00  addli r1, r21, 0
001f28  9bb19a00  slli r3, r21, 9
001f2c  1bb29d00  slli r4, r27, 9
001f30  9bc27a01  srli r5, r21, 23
001f34  1bc37d01  srli r6, r27, 23
001f38  93810100  seteq r3, r3, zero
001f3c  13020200  seteq r4, r4, zero
001f40  9b82f20f  andi r5, r5, 255
001f44  1b03f30f  andi r6, r6, 255
001f48  9bf2f20f  setlti r5, r5, 255
001f4c  1b73f30f  setlti r6, r6, 255
001f50  97913200  or r3, r5, r3
001f54  17124300  or r4, r6, r4
001f58  97013200  and r3, r4, r3
001f5c  b7c30106  beq r3, zero, 3312
001f60  bbd30d06  bneq r27, zero, 3316
001f64  37a00a00  beq r21, zero, 8
001f68  9f8a0d00  addli r21, r27, 0
001f6c  93611006  setle.f r3, zero, r1
001f70  13e20006  setle.f r4, r1, zero
001f74  97013200  and r3, r4, r3
001f78  3ba00100  bneq r3, zero, 8
001f7c  9f8a0000  addli r21, r1, 0
001f80  93e15605  setlt.f r3, r13, r21
001f84  9f800a00  addli r1, r21, 0
001f88  3ba00100  bneq r3, zero, 8
001f8c  9f800600  addli r1, r13, 0
001f90  9bb19600  slli r3, r13, 9
001f94  1bb29a00  slli r4, r21, 9
001f98  9bc27601  srli r5, r13, 23
001f9c  1bc37a01  srli r6, r21, 23
001fa0  93810100  seteq r3, r3, zero
001fa4  13020200  seteq r4, r4, zero
001fa8  9b82f20f  andi r5, r5, 255
001fac  1b03f30f  andi r6, r6, 255
001fb0  9bf2f20f  setlti r5, r5, 255
001fb4  1b73f30f  setlti r6, r6, 255
001fb8  97913200  or r3, r5, r3
001fbc  17124300  or r4, r6, r4
001fc0  97013200  and r3, r4, r3
001fc4  37f20106  beq r3, zero, 3228
001fc8  bb820a06  bneq r21, zero, 3232
001fcc  37a00600  beq r13, zero, 8
001fd0  9f860a00  addli r13, r21, 0
001fd4  93611006  setle.f r3, zero, r1
001fd8  13e20006  setle.f r4, r1, zero
001fdc  97013200  and r3, r4, r3
001fe0  3ba00100  bneq r3, zero, 8
001fe4  9f860000  addli r13, r1, 0
001fe8  9361d604  setlt.f r3, r12, r13
001fec  9f800600  addli r1, r13, 0
001ff0  3ba00100  bneq r3, zero, 8
001ff4  9f000600  addli r1, r12, 0
001ff8  9b319600  slli r3, r12, 9
001ffc  1bb29600  slli r4, r13, 9
002000  9b427601  srli r5, r12, 23
002004  1bc37601  srli r6, r13, 23
002008  93810100  seteq r3, r3, zero
00200c  13020200  seteq r4, r4, zero
002010  9b82f20f  andi r5, r5, 255
002014  1b03f30f  andi r6, r6, 255
002018  9bf2f20f  setlti r5, r5, 255
00201c  1b73f30f  setlti r6, r6, 255
002020  97913200  or r3, r5, r3
002024  17124300  or r4, r6, r4
002028  97013200  and r3, r4, r3
00202c  37a10106  beq r3, zero, 3144
002030  3bb10606  bneq r13, zero, 3148
002034  37200600  beq r12, zero, 8
002038  1f860600  addli r12, r13, 0
00203c  93611006  setle.f r3, zero, r1
002040  13e20006  setle.f r4, r1, zero
002044  97013200  and r3, r4, r3
002048  3ba00100  bneq r3, zero, 8
00204c  1f860000  addli r12, r1, 0
002050  93e1c504  setlt.f r3, r11, r12
002054  9f000600  addli r1, r12, 0
002058  3ba00100  bneq r3, zero, 8
00205c  9f800500  addli r1, r11, 0
002060  9bb19500  slli r3, r11, 9
002064  1b329600  slli r4, r12, 9
002068  9bc27501  srli r5, r11, 23
00206c  1b437601  srli r6, r12, 23
002070  93810100  seteq r3, r3, zero
002074  13020200  seteq r4, r4, zero
002078  9b82f20f  andi r5, r5, 255
00207c  1b03f30f  andi r6, r6, 255
002080  9bf2f20f  setlti r5, r5, 255
002084  1b73f30f  setlti r6, r6, 255
002088  97913200  or r3, r5, r3
00208c  17124300  or r4, r6, r4
002090  97013200  and r3, r4, r3
002094  b7df0104  beq r3, zero, 3060
002098  bb6f0604  bneq r12, zero, 3064
00209c  37a00500  beq r11, zero, 8
0020a0  9f050600  addli r11, r12, 0
0020a4  93611006  setle.f r3, zero, r1
0020a8  13e20006  setle.f r4, r1, zero
0020ac  97013200  and r3, r4, r3
0020b0  3ba00100  bneq r3, zero, 8
0020b4  9f850000  addli r11, r1, 0
0020b8  9361b504  setlt.f r3, r10, r11
0020bc  9f800500  addli r1, r11, 0
0020c0  3ba00100  bneq r3, zero, 8
0020c4  9f000500  addli r1, r10, 0
0020c8  9b319500  slli r3, r10, 9
0020cc  1bb29500  slli r4, r11, 9
0020d0  9b427501  srli r5, r10, 23
0020d4  1bc37501  srli r6, r11, 23
0020d8  93810100  seteq r3, r3, zero
0020dc  13020200  seteq r4, r4, zero
0020e0  9b82f20f  andi r5, r5, 255
0020e4  1b03f30f  andi r6, r6, 255
0020e8  9bf2f20f  setlti r5, r5, 255
0020ec  1b73f30f  setlti r6, r6, 255
0020f0  97913200  or r3, r5, r3
0020f4  17124300  or r4, r6, r4
0020f8  97013200  and r3, r4, r3
0020fc  b78e0104  beq r3, zero, 2976
002100  bb9e0504  bneq r11, zero, 2980
002104  37200500  beq r10, zero, 8
002108  1f850500  addli r10, r11, 0
00210c  93611006  setle.f r3, zero, r1
002110  13e20006  setle.f r4, r1, zero
002114  97013200  and r3, r4, r3
002118  3ba00100  bneq r3, zero, 8
00211c  1f850000  addli r10, r1, 0
002120  93e1a404  setlt.f r3, r9, r10
002124  9f000500  addli r1, r10, 0
002128  3ba00100  bneq r3, zero, 8
00212c  9f800400  addli r1, r9, 0
002130  9bb19400  slli r3, r9, 9
002134  1b329500  slli r4, r10, 9
002138  9bc27401  srli r5, r9, 23
00213c  1b437501  srli r6, r10, 23
002140  93810100  seteq r3, r3, zero
002144  13020200  seteq r4, r4, zero
002148  9b82f20f  andi r5, r5, 255
00214c  1b03f30f  andi r6, r6, 255
002150  9bf2f20f  setlti r5, r5, 255
002154  1b73f30f  setlti r6, r6, 255
002158  97913200  or r3, r5, r3
00215c  17124300  or r4, r6, r4
002160  97013200  and r3, r4, r3
002164  37bd0104  beq r3, zero, 2892
002168  3b4d0504  bneq r10, zero, 2896
00216c  37a00400  beq r9, zero, 8
002170  9f040500  addli r9, r10, 0
002174  93611006  setle.f r3, zero, r1
002178  13e20006  setle.f r4, r1, zero
00217c  97013200  and r3, r4, r3
002180  3ba00100  bneq r3, zero, 8
002184  9f840000  addli r9, r1, 0
002188  93619404  setlt.f r3, r8, r9
00218c  9f800400  addli r1, r9, 0
002190  3ba00100  bneq r3, zero, 8
002194  9f000400  addli r1, r8, 0
002198  9b319400  slli r3, r8, 9
00219c  1bb29400  slli r4, r9, 9
0021a0  9b427401  srli r5, r8, 23
0021a4  1bc37401  srli r6, r9, 23
0021a8  93810100  seteq r3, r3, zero
0021ac  13020200  seteq r4, r4, zero
0021b0  9b82f20f  andi r5, r5, 255
0021b4  1b03f30f  andi r6, r6, 255
0021b8  9bf2f20f  setlti r5, r5, 255
0021bc  1b73f30f  setlti r6, r6, 255
0021c0  97913200  or r3, r5, r3
0021c4  17124300  or r4, r6, r4
0021c8  97013200  and r3, r4, r3
0021cc  b7eb0104  beq r3, zero, 2808
0021d0  bbfb0404  bneq r9, zero, 2812
0021d4  37200400  beq r8, zero, 8
0021d8  1f840400  addli r8, r9, 0
0021dc  93611006  setle.f r3, zero, r1
0021e0  13e20006  setle.f r4, r1, zero
0021e4  97013200  and r3, r4, r3
0021e8  3ba00100  bneq r3, zero, 8
0021ec  1f840000  addli r8, r1, 0
0021f0  73608100  stores.w r8, 0(r2)
0021f4  00a00300  mfence { lm, sm, gm }
0021f8  80210e04  csr_set csr3, r28
0021fc  00d00100  sync_group
002200  ef4a0100  loads.w r21, 0(r2)
002204  bf102c01  blt.s r24, r18, 36
002208  1f0d0000  addli r26, zero, 0
00220c  9f0d0000  addli r27, zero, 0
002210  5b050000  j 40
002214  ab01c07f  lui r3, 523264
002218  b7d900f0  beq r1, zero, -7564
00221c  9f800100  addli r1, r3, 0
002220  bbc902f0  bneq r5, zero, -7568
002224  5b4efcff  j -7568
002228  8b605719  sub.f.rn r1, r14, r21
00222c  8b615a19  sub.f.rn r3, r20, r21
002230  0f8d0000  exp.f.rn r26, r1
002234  8f8d0100  exp.f.rn r27, r3
002238  e3000ffe  loadli.w r1,  -256(r30)
00223c  8b9b9011  add.s r23, r1, r25
002240  e340fffd  loadli.w r1,  -260(r30)
002244  0b9b9011  add.s r22, r1, r25
002248  e300fffd  loadli.w r1,  -264(r30)
00224c  0b9a9011  add.s r20, r1, r25
002250  e340effd  loadli.w r1,  -268(r30)
002254  0b979011  add.s r14, r1, r25
002258  e300effd  loadli.w r1,  -272(r30)
00225c  8b969011  add.s r13, r1, r25
002260  e340dffd  loadli.w r1,  -276(r30)
002264  0b969011  add.s r12, r1, r25
002268  e300dffd  loadli.w r1,  -280(r30)
00226c  8b959011  add.s r11, r1, r25
002270  e340cffd  loadli.w r1,  -284(r30)
002274  0b959011  add.s r10, r1, r25
002278  e300cffd  loadli.w r1,  -288(r30)
00227c  8b949011  add.s r9, r1, r25
002280  e340bffd  loadli.w r1,  -292(r30)
002284  0b949011  add.s r8, r1, r25
002288  e300bffd  loadli.w r1,  -296(r30)
00228c  0b939011  add.s r6, r1, r25
002290  e340affd  loadli.w r1,  -300(r30)
002294  8b929011  add.s r5, r1, r25
002298  e300affd  loadli.w r1,  -304(r30)
00229c  8b909011  add.s r1, r1, r25
0022a0  67061ffe  storeli.w r1, -160(r30)
0022a4  e3409ffd  loadli.w r1,  -308(r30)
0022a8  8b909011  add.s r1, r1, r25
0022ac  67461ffe  storeli.w r1, -156(r30)
0022b0  e3009ffd  loadli.w r1,  -312(r30)
0022b4  8b909011  add.s r1, r1, r25
0022b8  9f0c0000  addli r25, zero, 0
0022bc  e7061ffe  storeli.w r1, -152(r30)
0022c0  db030000  j 28
0022c4  1f0e0000  addli r28, zero, 0
0022c8  9f000000  addli r1, zero, 0
0022cc  0b6dcd11  add.f.rn r26, r26, r28
0022d0  8bed1d10  add.f.rn r27, r27, r1
0022d4  9f8c1c00  addli r25, r25, 8
0022d8  37813c01  beq r25, r19, 64
0022dc  3f202c01  blt.s r24, r18, 8
0022e0  dbfcffff  j -28
0022e4  8b109811  add.s r1, r16, r25
0022e8  0b9e9811  add.s r28, r17, r25
0022ec  e3811000  loadli.w r3,  8(r1)
0022f0  63021e00  loadli.w r4,  8(r28)
0022f4  e3c01000  loadli.w r1,  12(r1)
0022f8  634e1e00  loadli.w r28,  12(r28)
0022fc  8be14110  add.f.rn r3, r3, r4
002300  8be0c011  add.f.rn r1, r1, r28
002304  8be05019  sub.f.rn r1, r1, r21
002308  8be15119  sub.f.rn r3, r3, r21
00230c  0f8e0100  exp.f.rn r28, r3
002310  8f800000  exp.f.rn r1, r1
002314  5bf7ffff  j -72
002318  8b60bd11  add.f.rn r1, r26, r27
00231c  e3411ffe  loadli.w r3,  -244(r30)
002320  73e01100  stores.w r1, 0(r3)
002324  00a00300  mfence { lm, sm, gm }
002328  634ebffe  loadli.w r28,  -164(r30)
00232c  80210e04  csr_set csr3, r28
002330  00d00100  sync_group
002334  e340fffe  loadli.w r1,  -132(r30)
002338  3b980000  bneq r1, zero, 516
00233c  6fcc0700  loads.w r24, 0(r15)
002340  6fcd4700  loads.w r26, 4(r15)
002344  efcc8700  loads.w r25, 8(r15)
002348  efc1c700  loads.w r3, 12(r15)
00234c  6fc20701  loads.w r4, 16(r15)
002350  8b60ac11  add.f.rn r1, r24, r26
002354  8be09011  add.f.rn r1, r1, r25
002358  8be03010  add.f.rn r1, r1, r3
00235c  efc14701  loads.w r3, 20(r15)
002360  8be04010  add.f.rn r1, r1, r4
002364  6fc28701  loads.w r4, 24(r15)
002368  8be03010  add.f.rn r1, r1, r3
00236c  efc1c701  loads.w r3, 28(r15)
002370  8be04010  add.f.rn r1, r1, r4
002374  6fc20702  loads.w r4, 32(r15)
002378  8be03010  add.f.rn r1, r1, r3
00237c  efc14702  loads.w r3, 36(r15)
002380  8be04010  add.f.rn r1, r1, r4
002384  6fc28702  loads.w r4, 40(r15)
002388  8be03010  add.f.rn r1, r1, r3
00238c  efc1c702  loads.w r3, 44(r15)
002390  8be04010  add.f.rn r1, r1, r4
002394  6fc20703  loads.w r4, 48(r15)
002398  8be03010  add.f.rn r1, r1, r3
00239c  efc14703  loads.w r3, 52(r15)
0023a0  8be04010  add.f.rn r1, r1, r4
0023a4  6fc28703  loads.w r4, 56(r15)
0023a8  8be03010  add.f.rn r1, r1, r3
0023ac  efc1c703  loads.w r3, 60(r15)
0023b0  8be04010  add.f.rn r1, r1, r4
0023b4  6fc20704  loads.w r4, 64(r15)
0023b8  8be03010  add.f.rn r1, r1, r3
0023bc  efc14704  loads.w r3, 68(r15)
0023c0  8be04010  add.f.rn r1, r1, r4
0023c4  6fc28704  loads.w r4, 72(r15)
0023c8  8be03010  add.f.rn r1, r1, r3
0023cc  efc1c704  loads.w r3, 76(r15)
0023d0  8be04010  add.f.rn r1, r1, r4
0023d4  6fc20705  loads.w r4, 80(r15)
0023d8  8be03010  add.f.rn r1, r1, r3
0023dc  efc14705  loads.w r3, 84(r15)
0023e0  8be04010  add.f.rn r1, r1, r4
0023e4  6fc28705  loads.w r4, 88(r15)
0023e8  8be03010  add.f.rn r1, r1, r3
0023ec  efc1c705  loads.w r3, 92(r15)
0023f0  8be04010  add.f.rn r1, r1, r4
0023f4  6fc20706  loads.w r4, 96(r15)
0023f8  8be03010  add.f.rn r1, r1, r3
0023fc  efc14706  loads.w r3, 100(r15)
002400  8be04010  add.f.rn r1, r1, r4
002404  6fc28706  loads.w r4, 104(r15)
002408  8be03010  add.f.rn r1, r1, r3
00240c  efc1c706  loads.w r3, 108(r15)
002410  8be04010  add.f.rn r1, r1, r4
002414  6fc20707  loads.w r4, 112(r15)
002418  8be03010  add.f.rn r1, r1, r3
00241c  efc14707  loads.w r3, 116(r15)
002420  8be04010  add.f.rn r1, r1, r4
002424  6fc28707  loads.w r4, 120(r15)
002428  8be03010  add.f.rn r1, r1, r3
00242c  efc1c707  loads.w r3, 124(r15)
002430  8be04010  add.f.rn r1, r1, r4
002434  6fc20708  loads.w r4, 128(r15)
002438  8be03010  add.f.rn r1, r1, r3
00243c  efc14708  loads.w r3, 132(r15)
002440  8be04010  add.f.rn r1, r1, r4
002444  6fc28708  loads.w r4, 136(r15)
002448  8be03010  add.f.rn r1, r1, r3
00244c  efc1c708  loads.w r3, 140(r15)
002450  8be04010  add.f.rn r1, r1, r4
002454  6fc20709  loads.w r4, 144(r15)
002458  8be03010  add.f.rn r1, r1, r3
00245c  efc14709  loads.w r3, 148(r15)
002460  8be04010  add.f.rn r1, r1, r4
002464  6fc28709  loads.w r4, 152(r15)
002468  8be03010  add.f.rn r1, r1, r3
00246c  efc1c709  loads.w r3, 156(r15)
002470  8be04010  add.f.rn r1, r1, r4
002474  6fc2070a  loads.w r4, 160(r15)
002478  8be03010  add.f.rn r1, r1, r3
00247c  efc1470a  loads.w r3, 164(r15)
002480  8be04010  add.f.rn r1, r1, r4
002484  6fc2870a  loads.w r4, 168(r15)
002488  8be03010  add.f.rn r1, r1, r3
00248c  efc1c70a  loads.w r3, 172(r15)
002490  8be04010  add.f.rn r1, r1, r4
002494  6fc2070b  loads.w r4, 176(r15)
002498  8be03010  add.f.rn r1, r1, r3
00249c  efc1470b  loads.w r3, 180(r15)
0024a0  8be04010  add.f.rn r1, r1, r4
0024a4  6fc2870b  loads.w r4, 184(r15)
0024a8  8be03010  add.f.rn r1, r1, r3
0024ac  efc1c70b  loads.w r3, 188(r15)
0024b0  8be04010  add.f.rn r1, r1, r4
0024b4  6fc2070c  loads.w r4, 192(r15)
0024b8  8be03010  add.f.rn r1, r1, r3
0024bc  efc1470c  loads.w r3, 196(r15)
0024c0  8be04010  add.f.rn r1, r1, r4
0024c4  6fc2870c  loads.w r4, 200(r15)
0024c8  8be03010  add.f.rn r1, r1, r3
0024cc  efc1c70c  loads.w r3, 204(r15)
0024d0  8be04010  add.f.rn r1, r1, r4
0024d4  6fc2070d  loads.w r4, 208(r15)
0024d8  8be03010  add.f.rn r1, r1, r3
0024dc  efc1470d  loads.w r3, 212(r15)
0024e0  8be04010  add.f.rn r1, r1, r4
0024e4  6fc2870d  loads.w r4, 216(r15)
0024e8  8be03010  add.f.rn r1, r1, r3
0024ec  efc1c70d  loads.w r3, 220(r15)
0024f0  8be04010  add.f.rn r1, r1, r4
0024f4  6fc2070e  loads.w r4, 224(r15)
0024f8  8be03010  add.f.rn r1, r1, r3
0024fc  efc1470e  loads.w r3, 228(r15)
002500  8be04010  add.f.rn r1, r1, r4
002504  6fc2870e  loads.w r4, 232(r15)
002508  8be03010  add.f.rn r1, r1, r3
00250c  efc1c70e  loads.w r3, 236(r15)
002510  8be04010  add.f.rn r1, r1, r4
002514  6fc2070f  loads.w r4, 240(r15)
002518  8be03010  add.f.rn r1, r1, r3
00251c  efc1470f  loads.w r3, 244(r15)
002520  8be04010  add.f.rn r1, r1, r4
002524  6fc2870f  loads.w r4, 248(r15)
002528  8be03010  add.f.rn r1, r1, r3
00252c  efc1c70f  loads.w r3, 252(r15)
002530  8be04010  add.f.rn r1, r1, r4
002534  8be03010  add.f.rn r1, r1, r3
002538  73e01700  stores.w r1, 0(r15)
00253c  00a00300  mfence { lm, sm, gm }
002540  80210e04  csr_set csr3, r28
002544  00d00100  sync_group
002548  6fcc0700  loads.w r24, 0(r15)
00254c  9f0c0000  addli r25, zero, 0
002550  8b919811  add.s r3, r17, r25
002554  8b109811  add.s r1, r16, r25
002558  9f8c1c00  addli r25, r25, 8
00255c  63820000  loadli.w r4,  0(r1)
002560  638d0100  loadli.w r26,  0(r3)
002564  e3c00000  loadli.w r1,  4(r1)
002568  e3cd0100  loadli.w r27,  4(r3)
00256c  0b62a211  add.f.rn r4, r4, r26
002570  8be0b011  add.f.rn r1, r1, r27
002574  0b625219  sub.f.rn r4, r4, r21
002578  8be05019  sub.f.rn r1, r1, r21
00257c  0f020200  exp.f.rn r4, r4
002580  8f800000  exp.f.rn r1, r1
002584  0f028219  div.f.rn r4, r4, r24
002588  8f808019  div.f.rn r1, r1, r24
00258c  67804100  storeli.w r4, 0(r3)
002590  67c01100  storeli.w r1, 4(r3)
002594  00a00000  mfence { lm }
002598  bbee7cfe  bneq r25, r7, -72
00259c  b3910b28  sext_int2long r[4:5], r23
0025a0  9f2c0000  addli r25, zero, 2
0025a4  eb5b0f01  load.d r[24:25], 16(r30)
0025a8  ab0000f0  lui r1, 983040
0025ac  1f4d0000  addli r26, zero, 4
0025b0  e34ddffe  loadli.w r27,  -148(r30)
0025b4  b31a0b28  sext_int2long r[22:23], r22
0025b8  97b19103  sll.d r[4:5], r[4:5], r25
0025bc  97101d00  or r1, r26, r1
0025c0  97ba9a03  sll.d r[22:23], r[22:23], r25
0025c4  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
0025c8  ffb0b101  s_lm2gm r1, r27, 0(r[4:5])
0025cc  ab0000f0  lui r1, 983040
0025d0  8ba15b11  add.ul r[4:5], r[24:25], r[22:23]
0025d4  331a0a28  sext_int2long r[21:22], r20
0025d8  1f8b1800  addli r22, r17, 8
0025dc  97101d00  or r1, r26, r1
0025e0  173a9a03  sll.d r[21:22], r[21:22], r25
0025e4  ffb06101  s_lm2gm r1, r22, 0(r[4:5])
0025e8  ab0000f0  lui r1, 983040
0025ec  8ba14b11  add.ul r[4:5], r[24:25], r[21:22]
0025f0  331a0728  sext_int2long r[21:22], r14
0025f4  1fc71800  addli r14, r17, 12
0025f8  97101d00  or r1, r26, r1
0025fc  173a9a03  sll.d r[21:22], r[21:22], r25
002600  ffb0e100  s_lm2gm r1, r14, 0(r[4:5])
002604  ab0000f0  lui r1, 983040
002608  b3960628  sext_int2long r[14:15], r13
00260c  8ba14b11  add.ul r[4:5], r[24:25], r[21:22]
002610  1f8a2800  addli r20, r17, 16
002614  97101d00  or r1, r26, r1
002618  97b69603  sll.d r[14:15], r[14:15], r25
00261c  ffb04101  s_lm2gm r1, r20, 0(r[4:5])
002620  ab0000f0  lui r1, 983040
002624  8ba1db10  add.ul r[4:5], r[24:25], r[14:15]
002628  33160628  sext_int2long r[13:14], r12
00262c  1fc72800  addli r14, r17, 20
002630  97101d00  or r1, r26, r1
002634  17369603  sll.d r[13:14], r[13:14], r25
002638  ffb0e100  s_lm2gm r1, r14, 0(r[4:5])
00263c  ab0000f0  lui r1, 983040
002640  8ba1cb10  add.ul r[4:5], r[24:25], r[13:14]
002644  b3950528  sext_int2long r[12:13], r11
002648  9f863800  addli r13, r17, 24
00264c  97101d00  or r1, r26, r1
002650  97b59503  sll.d r[12:13], r[12:13], r25
002654  ffb0d100  s_lm2gm r1, r13, 0(r[4:5])
002658  ab0000f0  lui r1, 983040
00265c  8ba1bb10  add.ul r[4:5], r[24:25], r[12:13]
002660  33160528  sext_int2long r[13:14], r10
002664  9fc53800  addli r11, r17, 28
002668  b3940428  sext_int2long r[10:11], r9
00266c  97101d00  or r1, r26, r1
002670  97b49403  sll.d r[10:11], r[10:11], r25
002674  ffb0b100  s_lm2gm r1, r11, 0(r[4:5])
002678  97319603  sll.d r[4:5], r[13:14], r25
00267c  ab0000f0  lui r1, 983040
002680  9f854800  addli r11, r17, 32
002684  8ba49b10  add.ul r[10:11], r[24:25], r[10:11]
002688  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
00268c  97101d00  or r1, r26, r1
002690  ffb0b100  s_lm2gm r1, r11, 0(r[4:5])
002694  ab0000f0  lui r1, 983040
002698  9fc14800  addli r3, r17, 36
00269c  b3150428  sext_int2long r[12:13], r8
0026a0  97101d00  or r1, r26, r1
0026a4  ffb03400  s_lm2gm r1, r3, 0(r[10:11])
0026a8  b3110328  sext_int2long r[4:5], r6
0026ac  2b0500f0  lui r10, 983040
0026b0  17b49503  sll.d r[9:10], r[12:13], r25
0026b4  ab0000f0  lui r1, 983040
0026b8  9fc55800  addli r11, r17, 44
0026bc  1f835800  addli r6, r17, 40
0026c0  97b19103  sll.d r[4:5], r[4:5], r25
0026c4  1715ad00  or r10, r26, r10
0026c8  0ba48b10  add.ul r[9:10], r[24:25], r[9:10]
0026cc  97101d00  or r1, r26, r1
0026d0  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
0026d4  ff306400  s_lm2gm r1, r6, 0(r[9:10])
0026d8  ab0000f0  lui r1, 983040
0026dc  b3920228  sext_int2long r[6:7], r5
0026e0  1f846800  addli r8, r17, 48
0026e4  7fb5b100  s_lm2gm r10, r11, 0(r[4:5])
0026e8  eb510ff7  load.d r[4:5], -144(r30)
0026ec  97101d00  or r1, r26, r1
0026f0  97b29203  sll.d r[6:7], r[6:7], r25
0026f4  1fc57800  addli r10, r17, 60
0026f8  9f250000  addli r11, zero, 2
0026fc  8ba25b10  add.ul r[6:7], r[24:25], r[6:7]
002700  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
002704  ffb01101  s_lm2gm r1, r17, 0(r[4:5])
002708  e300cffe  loadli.w r1,  -160(r30)
00270c  b3910028  sext_int2long r[4:5], r1
002710  ab0000f0  lui r1, 983040
002714  97101d00  or r1, r26, r1
002718  97b19103  sll.d r[4:5], r[4:5], r25
00271c  ffb08200  s_lm2gm r1, r8, 0(r[6:7])
002720  ab0000f0  lui r1, 983040
002724  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
002728  9fc26800  addli r5, r17, 52
00272c  6343cffe  loadli.w r6,  -156(r30)
002730  97101d00  or r1, r26, r1
002734  33140328  sext_int2long r[9:10], r6
002738  ffb05100  s_lm2gm r1, r5, 0(r[4:5])
00273c  e300dffe  loadli.w r1,  -152(r30)
002740  97329403  sll.d r[6:7], r[9:10], r25
002744  ab0400f0  lui r9, 983040
002748  1f847800  addli r8, r17, 56
00274c  b3910028  sext_int2long r[4:5], r1
002750  ab0000f0  lui r1, 983040
002754  8ba25b10  add.ul r[6:7], r[24:25], r[6:7]
002758  97149d00  or r9, r26, r9
00275c  97b19103  sll.d r[4:5], r[4:5], r25
002760  97101d00  or r1, r26, r1
002764  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
002768  ffb08200  s_lm2gm r1, r8, 0(r[6:7])
00276c  e3400ffe  loadli.w r1,  -252(r30)
002770  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
002774  6305fffe  loadli.w r10,  -136(r30)
002778  00a00000  mfence { lm }
00277c  0b151510  add.s r10, r10, r1
002780  e3402ffe  loadli.w r1,  -236(r30)
002784  bf7a15ec  blt.s r10, r1, -9540
002788  5baa0000  j 1360
00278c  ab01c07f  lui r3, 523264
002790  372602ee  beq r4, zero, -8824
002794  1f820100  addli r4, r3, 0
002798  3b9600ee  bneq r1, zero, -8828
00279c  dbb0fbff  j -8828
0027a0  ab01c07f  lui r3, 523264
0027a4  b79700ee  beq r1, zero, -8732
0027a8  9f800100  addli r1, r3, 0
0027ac  bb070aee  bneq r20, zero, -8736
0027b0  5bbcfbff  j -8736
0027b4  ab00c07f  lui r1, 523264
0027b8  e34c3ffd  loadli.w r25,  -356(r30)
0027bc  b74f0aee  beq r20, zero, -8208
0027c0  1f8a0000  addli r20, r1, 0
0027c4  bbbf02ee  bneq r5, zero, -8212
0027c8  dbfdfbff  j -8212
0027cc  ab00c07f  lui r1, 523264
0027d0  634a9ffc  loadli.w r20,  -436(r30)
0027d4  371305f0  beq r10, zero, -7996
0027d8  1f850000  addli r10, r1, 0
0027dc  3b030bf0  bneq r22, zero, -8000
0027e0  5b18fcff  j -8000
0027e4  ab00c07f  lui r1, 523264
0027e8  37640bf0  beq r22, zero, -7912
0027ec  1f8b0000  addli r22, r1, 0
0027f0  3b5407f0  bneq r14, zero, -7916
0027f4  db22fcff  j -7916
0027f8  ab00c07f  lui r1, 523264
0027fc  b75507f0  beq r14, zero, -7820
002800  1f870000  addli r14, r1, 0
002804  bb450ef0  bneq r28, zero, -7824
002808  5b2efcff  j -7824
00280c  ab00c07f  lui r1, 523264
002810  37370ef0  beq r28, zero, -7732
002814  1f8e0000  addli r28, r1, 0
002818  3ba706f0  bneq r13, zero, -7736
00281c  5b39fcff  j -7736
002820  ab00c07f  lui r1, 523264
002824  b79806f0  beq r13, zero, -7644
002828  9f860000  addli r13, r1, 0
00282c  bb0804f0  bneq r8, zero, -7648
002830  5b44fcff  j -7648
002834  ab00c07f  lui r1, 523264
002838  6345dffc  loadli.w r10,  -404(r30)
00283c  b77904f0  beq r8, zero, -7556
002840  1f840000  addli r8, r1, 0
002844  bb6903f0  bneq r6, zero, -7560
002848  5b4ffcff  j -7560
00284c  ab00c07f  lui r1, 523264
002850  e304dffc  loadli.w r9,  -408(r30)
002854  374b03f0  beq r6, zero, -7472
002858  1f830000  addli r6, r1, 0
00285c  3bbb01f0  bneq r3, zero, -7476
002860  db59fcff  j -7476
002864  ab00c07f  lui r1, 523264
002868  6344cffc  loadli.w r8,  -412(r30)
00286c  b79c01f0  beq r3, zero, -7388
002870  9f810000  addli r3, r1, 0
002874  bb0c06f0  bneq r12, zero, -7392
002878  5b64fcff  j -7392
00287c  ab00c07f  lui r1, 523264
002880  b76d06f0  beq r12, zero, -7304
002884  1f860000  addli r12, r1, 0
002888  bbdd05f0  bneq r11, zero, -7308
00288c  db6efcff  j -7308
002890  ab00c07f  lui r1, 523264
002894  37cf05f0  beq r11, zero, -7216
002898  9f850000  addli r11, r1, 0
00289c  3bbf0bf0  bneq r23, zero, -7220
0028a0  db79fcff  j -7220
0028a4  ab00c07f  lui r1, 523264
0028a8  e3423ffe  loadli.w r5,  -228(r30)
0028ac  b7a00bf2  beq r23, zero, -7128
0028b0  9f8b0000  addli r23, r1, 0
0028b4  bb100df2  bneq r26, zero, -7132
0028b8  db84fcff  j -7132
0028bc  ab00c07f  lui r1, 523264
0028c0  37020df2  beq r26, zero, -7040
0028c4  1f8d0000  addli r26, r1, 0
0028c8  63433ffe  loadli.w r6,  -228(r30)
0028cc  bb7103f2  bneq r6, zero, -7044
0028d0  db8ffcff  j -7044
0028d4  ab00c07f  lui r1, 523264
0028d8  e3024ffe  loadli.w r5,  -224(r30)
0028dc  37630df2  beq r26, zero, -6952
0028e0  1f8d0000  addli r26, r1, 0
0028e4  3bd30bf2  bneq r23, zero, -6956
0028e8  db9afcff  j -6956
0028ec  ab00c07f  lui r1, 523264
0028f0  b7b40bf2  beq r23, zero, -6868
0028f4  9f8b0000  addli r23, r1, 0
0028f8  63034ffe  loadli.w r6,  -224(r30)
0028fc  bb2403f2  bneq r6, zero, -6872
002900  5ba5fcff  j -6872
002904  ab00c07f  lui r1, 523264
002908  e3424ffe  loadli.w r5,  -220(r30)
00290c  37960bf2  beq r23, zero, -6780
002910  9f8b0000  addli r23, r1, 0
002914  3b0607f2  bneq r14, zero, -6784
002918  5bb0fcff  j -6784
00291c  ab00c07f  lui r1, 523264
002920  376707f2  beq r14, zero, -6696
002924  1f870000  addli r14, r1, 0
002928  63434ffe  loadli.w r6,  -220(r30)
00292c  3b5703f2  bneq r6, zero, -6700
002930  dbbafcff  j -6700
002934  ab00c07f  lui r1, 523264
002938  e3025ffe  loadli.w r5,  -216(r30)
00293c  b74807f2  beq r14, zero, -6608
002940  1f870000  addli r14, r1, 0
002944  bbb80af2  bneq r21, zero, -6612
002948  dbc5fcff  j -6612
00294c  ab00c07f  lui r1, 523264
002950  e3425ffe  loadli.w r5,  -212(r30)
002954  37bc0bf2  beq r23, zero, -6388
002958  9f8b0000  addli r23, r1, 0
00295c  3b2c0af2  bneq r20, zero, -6392
002960  5be1fcff  j -6392
002964  ab00c07f  lui r1, 523264
002968  1f870a00  addli r14, r21, 0
00296c  b72d0af2  beq r20, zero, -6296
002970  1f8a0000  addli r20, r1, 0
002974  63435ffe  loadli.w r6,  -212(r30)
002978  bb1d03f2  bneq r6, zero, -6300
00297c  dbecfcff  j -6300
002980  ab00c07f  lui r1, 523264
002984  e3026ffe  loadli.w r5,  -208(r30)
002988  370f0af2  beq r20, zero, -6208
00298c  1f8a0000  addli r20, r1, 0
002990  bb7e0bf2  bneq r22, zero, -6212
002994  dbf7fcff  j -6212
002998  ab00c07f  lui r1, 523264
00299c  37600bf4  beq r22, zero, -6120
0029a0  1f8b0000  addli r22, r1, 0
0029a4  63036ffe  loadli.w r6,  -208(r30)
0029a8  3b5003f4  bneq r6, zero, -6124
0029ac  db02fdff  j -6124
0029b0  ab00c07f  lui r1, 523264
0029b4  e3426ffe  loadli.w r5,  -204(r30)
0029b8  b7410bf4  beq r22, zero, -6032
0029bc  1f8b0000  addli r22, r1, 0
0029c0  bbb105f4  bneq r11, zero, -6036
0029c4  db0dfdff  j -6036
0029c8  ab00c07f  lui r1, 523264
0029cc  379305f4  beq r11, zero, -5948
0029d0  9f850000  addli r11, r1, 0
0029d4  63436ffe  loadli.w r6,  -204(r30)
0029d8  3b0303f4  bneq r6, zero, -5952
0029dc  5b18fdff  j -5952
0029e0  ab00c07f  lui r1, 523264
0029e4  e3027ffe  loadli.w r5,  -200(r30)
0029e8  37f405f4  beq r11, zero, -5860
0029ec  9f850000  addli r11, r1, 0
0029f0  3b6406f4  bneq r12, zero, -5864
0029f4  5b23fdff  j -5864
0029f8  ab00c07f  lui r1, 523264
0029fc  b74506f4  beq r12, zero, -5776
002a00  1f860000  addli r12, r1, 0
002a04  63037ffe  loadli.w r6,  -200(r30)
002a08  bb3503f4  bneq r6, zero, -5780
002a0c  db2dfdff  j -5780
002a10  ab00c07f  lui r1, 523264
002a14  e3427ffe  loadli.w r5,  -196(r30)
002a18  372706f4  beq r12, zero, -5688
002a1c  1f860000  addli r12, r1, 0
002a20  3b9706f4  bneq r13, zero, -5692
002a24  db38fdff  j -5692
002a28  ab00c07f  lui r1, 523264
002a2c  37f806f4  beq r13, zero, -5604
002a30  9f860000  addli r13, r1, 0
002a34  63437ffe  loadli.w r6,  -196(r30)
002a38  3b6803f4  bneq r6, zero, -5608
002a3c  5b43fdff  j -5608
002a40  ab00c07f  lui r1, 523264
002a44  e3028ffe  loadli.w r5,  -192(r30)
002a48  b7d906f4  beq r13, zero, -5516
002a4c  9f860000  addli r13, r1, 0
002a50  bbc90df4  bneq r27, zero, -5520
002a54  5b4efdff  j -5520
002a58  ab00c07f  lui r1, 523264
002a5c  e3428ffe  loadli.w r5,  -188(r30)
002a60  37cd06f4  beq r13, zero, -5296
002a64  9f860000  addli r13, r1, 0
002a68  3b3d04f4  bneq r8, zero, -5300
002a6c  db69fdff  j -5300
002a70  ab00c07f  lui r1, 523264
002a74  1f860d00  addli r12, r27, 0
002a78  b73e04f4  beq r8, zero, -5204
002a7c  1f840000  addli r8, r1, 0
002a80  63438ffe  loadli.w r6,  -188(r30)
002a84  bb2e03f4  bneq r6, zero, -5208
002a88  5b75fdff  j -5208
002a8c  ab00c07f  lui r1, 523264
002a90  e3029ffe  loadli.w r5,  -184(r30)
002a94  371004f6  beq r8, zero, -5116
002a98  1f840000  addli r8, r1, 0
002a9c  3b8004f6  bneq r9, zero, -5120
002aa0  5b80fdff  j -5120
002aa4  ab00c07f  lui r1, 523264
002aa8  37f104f6  beq r9, zero, -5028
002aac  9f840000  addli r9, r1, 0
002ab0  63039ffe  loadli.w r6,  -184(r30)
002ab4  3b6103f6  bneq r6, zero, -5032
002ab8  5b8bfdff  j -5032
002abc  ab00c07f  lui r1, 523264
002ac0  e3429ffe  loadli.w r5,  -180(r30)
002ac4  b7d204f6  beq r9, zero, -4940
002ac8  9f840000  addli r9, r1, 0
002acc  bb4205f6  bneq r10, zero, -4944
002ad0  5b96fdff  j -4944
002ad4  ab00c07f  lui r1, 523264
002ad8  373405f6  beq r10, zero, -4852
002adc  1f850000  addli r10, r1, 0
002ae0  63439ffe  loadli.w r6,  -180(r30)
002ae4  3b2403f6  bneq r6, zero, -4856
002ae8  5ba1fdff  j -4856
002aec  ab00c07f  lui r1, 523264
002af0  e302affe  loadli.w r5,  -176(r30)
002af4  b71505f6  beq r10, zero, -4764
002af8  1f850000  addli r10, r1, 0
002afc  bb050ef6  bneq r28, zero, -4768
002b00  5bacfdff  j -4768
002b04  ab00c07f  lui r1, 523264
002b08  b7760ef6  beq r28, zero, -4676
002b0c  1f8e0000  addli r28, r1, 0
002b10  6303affe  loadli.w r6,  -176(r30)
002b14  bb6603f6  bneq r6, zero, -4680
002b18  5bb7fdff  j -4680
002b1c  ab00c07f  lui r1, 523264
002b20  e342affe  loadli.w r5,  -172(r30)
002b24  37580ef6  beq r28, zero, -4588
002b28  1f8e0000  addli r28, r1, 0
002b2c  3b480af6  bneq r20, zero, -4592
002b30  5bc2fdff  j -4592
002b34  ab00c07f  lui r1, 523264
002b38  b7290af6  beq r20, zero, -4504
002b3c  1f8a0000  addli r20, r1, 0
002b40  6343affe  loadli.w r6,  -172(r30)
002b44  bb1903f6  bneq r6, zero, -4508
002b48  dbccfdff  j -4508
002b4c  ab00c07f  lui r1, 523264
002b50  e302bffe  loadli.w r5,  -168(r30)
002b54  378b0af6  beq r21, zero, -4416
002b58  9f8a0000  addli r21, r1, 0
002b5c  bb7a07f6  bneq r14, zero, -4420
002b60  dbd7fdff  j -4420
002b64  ab00c07f  lui r1, 523264
002b68  375c07f6  beq r14, zero, -4332
002b6c  1f870000  addli r14, r1, 0
002b70  6303bffe  loadli.w r6,  -168(r30)
002b74  3b4c03f6  bneq r6, zero, -4336
002b78  5be2fdff  j -4336
002b7c  ab00c07f  lui r1, 523264
002b80  e302cffe  loadli.w r5,  -160(r30)
002b84  b73d07f6  beq r14, zero, -4244
002b88  1f870000  addli r14, r1, 0
002b8c  bb2d05f6  bneq r10, zero, -4248
002b90  5bedfdff  j -4248
002b94  ab00c07f  lui r1, 523264
002b98  370f05f6  beq r10, zero, -4160
002b9c  1f850000  addli r10, r1, 0
002ba0  6303cffe  loadli.w r6,  -160(r30)
002ba4  bb7e03f6  bneq r6, zero, -4164
002ba8  dbf7fdff  j -4164
002bac  ab00c07f  lui r1, 523264
002bb0  37600af8  beq r20, zero, -4072
002bb4  1f8a0000  addli r20, r1, 0
002bb8  3b5004f8  bneq r8, zero, -4076
002bbc  db02feff  j -4076
002bc0  ab00c07f  lui r1, 523264
002bc4  e342cffe  loadli.w r5,  -156(r30)
002bc8  b73104f8  beq r8, zero, -3988
002bcc  1f840000  addli r8, r1, 0
002bd0  bba104f8  bneq r9, zero, -3992
002bd4  5b0dfeff  j -3992
002bd8  ab00c07f  lui r1, 523264
002bdc  e302dffe  loadli.w r5,  -152(r30)
002be0  378304f8  beq r9, zero, -3904
002be4  9f840000  addli r9, r1, 0
002be8  6343cffe  loadli.w r6,  -156(r30)
002bec  bb7203f8  bneq r6, zero, -3908
002bf0  db17feff  j -3908
002bf4  ab00c07f  lui r1, 523264
002bf8  b7460af8  beq r20, zero, -3664
002bfc  1f8a0000  addli r20, r1, 0
002c00  bbb60af8  bneq r21, zero, -3668
002c04  db35feff  j -3668
002c08  ab00c07f  lui r1, 523264
002c0c  1f040e00  addli r8, r28, 0
002c10  37b80af8  beq r21, zero, -3572
002c14  9f8a0000  addli r21, r1, 0
002c18  1f8e0400  addli r28, r9, 0
002c1c  3b280df8  bneq r26, zero, -3576
002c20  5b41feff  j -3576
002c24  ab00c07f  lui r1, 523264
002c28  b7390df8  beq r26, zero, -3476
002c2c  1f8d0000  addli r26, r1, 0
002c30  bba90bf8  bneq r23, zero, -3480
002c34  5b4dfeff  j -3480
002c38  ab00c07f  lui r1, 523264
002c3c  378b0bf8  beq r23, zero, -3392
002c40  9f8b0000  addli r23, r1, 0
002c44  bbfa0df8  bneq r27, zero, -3396
002c48  db57feff  j -3396
002c4c  ab00c07f  lui r1, 523264
002c50  37dc0df8  beq r27, zero, -3308
002c54  9f8d0000  addli r27, r1, 0
002c58  3bcc0af8  bneq r21, zero, -3312
002c5c  5b62feff  j -3312
002c60  ab00c07f  lui r1, 523264
002c64  b7ad0af8  beq r21, zero, -3224
002c68  9f8a0000  addli r21, r1, 0
002c6c  bb9d06f8  bneq r13, zero, -3228
002c70  db6cfeff  j -3228
002c74  ab00c07f  lui r1, 523264
002c78  b7fe06f8  beq r13, zero, -3140
002c7c  9f860000  addli r13, r1, 0
002c80  bb6e06f8  bneq r12, zero, -3144
002c84  5b77feff  j -3144
002c88  ab00c07f  lui r1, 523264
002c8c  374006fa  beq r12, zero, -3056
002c90  1f860000  addli r12, r1, 0
002c94  3bb005fa  bneq r11, zero, -3060
002c98  db81feff  j -3060
002c9c  ab00c07f  lui r1, 523264
002ca0  b79105fa  beq r11, zero, -2972
002ca4  9f850000  addli r11, r1, 0
002ca8  bb0105fa  bneq r10, zero, -2976
002cac  5b8cfeff  j -2976
002cb0  ab00c07f  lui r1, 523264
002cb4  b76205fa  beq r10, zero, -2888
002cb8  1f850000  addli r10, r1, 0
002cbc  bbd204fa  bneq r9, zero, -2892
002cc0  db96feff  j -2892
002cc4  ab00c07f  lui r1, 523264
002cc8  37b404fa  beq r9, zero, -2804
002ccc  9f840000  addli r9, r1, 0
002cd0  3b2404fa  bneq r8, zero, -2808
002cd4  5ba1feff  j -2808
002cd8  9f8e9e03  addli sp, sp, 456
002cdc  00a00300  mfence { lm, sm, gm }
002ce0  00100000  exit
002ce4  00100000  exit
002ce8  00100000  exit
002cec  00100000  exit
002cf0  00100000  exit
002cf4  00100000  exit
002cf8  00100000  exit
002cfc  00100000  exit
002d00  00100000  exit
002d04  00100000  exit
002d08  00100000  exit
002d0c  00100000  exit
002d10  00100000  exit
002d14  00100000  exit
002d18  00100000  exit
002d1c  00100000  exit
002d20  00100000  exit
002d24  00100000  exit
002d28  00100000  exit
002d2c  00100000  exit
002d30  00100000  exit
002d34  00100000  exit
002d38  00100000  exit
002d3c  00100000  exit
002d40  00100000  exit
002d44  00100000  exit
002d48  00100000  exit
002d4c  00100000  exit
002d50  00100000  exit
002d54  00100000  exit
002d58  00100000  exit
002d5c  00100000  exit
002d60  00100000  exit
002d64  00100000  exit
002d68  00100000  exit
002d6c  00100000  exit
002d70  00100000  exit
002d74  00100000  exit
002d78  00100000  exit
002d7c  00100000  exit
002d80  00100000  exit
002d84  00100000  exit
002d88  00100000  exit
002d8c  00100000  exit
002d90  00100000  exit
002d94  00100000  exit
002d98  00100000  exit
002d9c  00100000  exit
002da0  00100000  exit
002da4  00100000  exit
002da8  00100000  exit
002dac  00100000  exit
002db0  00100000  exit
002db4  00100000  exit
002db8  00100000  exit
002dbc  00100000  exit
002dc0  00100000  exit
002dc4  00100000  exit
002dc8  00100000  exit
002dcc  00100000  exit
002dd0  00100000  exit
002dd4  00100000  exit
002dd8  00100000  exit
002ddc  00100000  exit
002de0  00100000  exit
002de4  00100000  exit
002de8  00100000  exit
002dec  00100000  exit
002df0  00100000  exit
002df4  00100000  exit
002df8  00100000  exit
002dfc  00100000  exit
002e00  00100000  exit
002e04  00100000  exit
002e08  00100000  exit
002e0c  00100000  exit
002e10  00100000  exit
002e14  00100000  exit
002e18  00100000  exit
002e1c  00100000  exit
002e20  00100000  exit
002e24  00100000  exit
002e28  00100000  exit
002e2c  00100000  exit
002e30  00100000  exit
002e34  00100000  exit
002e38  00100000  exit
002e3c  00100000  exit
002e40  00100000  exit
002e44  00100000  exit
002e48  00100000  exit
002e4c  00100000  exit
002e50  00100000  exit
002e54  00100000  exit
002e58  00100000  exit
002e5c  00100000  exit
002e60  00100000  exit
002e64  00100000  exit
002e68  00100000  exit
002e6c  00100000  exit
002e70  00100000  exit
002e74  00100000  exit
002e78  00100000  exit
002e7c  00100000  exit
002e80  00100000  exit
002e84  00100000  exit
002e88  00100000  exit
002e8c  00100000  exit
002e90  00100000  exit
002e94  00100000  exit
002e98  00100000  exit
002e9c  00100000  exit
002ea0  00100000  exit
002ea4  00100000  exit
002ea8  00100000  exit
002eac  00100000  exit
002eb0  00100000  exit
002eb4  00100000  exit
002eb8  00100000  exit
002ebc  00100000  exit
002ec0  00100000  exit
002ec4  00100000  exit
002ec8  00100000  exit
002ecc  00100000  exit
002ed0  00100000  exit
002ed4  00100000  exit
002ed8  00100000  exit
002edc  00100000  exit
002ee0  00100000  exit
002ee4  00100000  exit
002ee8  00100000  exit
002eec  00100000  exit
002ef0  00100000  exit
002ef4  00100000  exit
002ef8  00100000  exit
002efc  00100000  exit
002f00  00100000  exit
002f04  00100000  exit
002f08  00100000  exit
002f0c  00100000  exit
002f10  00100000  exit
002f14  00100000  exit
002f18  00100000  exit
002f1c  00100000  exit
002f20  00100000  exit
