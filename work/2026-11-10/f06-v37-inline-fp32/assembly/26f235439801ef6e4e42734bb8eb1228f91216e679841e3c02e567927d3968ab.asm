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
00012c  67028ffe  storeli.w r8, -224(r30)
000130  73605400  stores.w r5, 0(r8)
000134  0b126220  mul.s r4, r4, r6
000138  00a00300  mfence { lm, sm, gm }
00013c  80210e04  csr_set csr3, r28
000140  00d00100  sync_group
000144  e7414ffe  storeli.w r4, -228(r30)
000148  4b4da214  ble.s r4, r10, 11088
00014c  9f038000  addli r7, zero, 64
000150  63044ffe  loadli.w r8,  -224(r30)
000154  1f260000  addli r12, zero, 2
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  9f250000  addli r11, zero, 2
000160  1f080fff  addli r16, r30, -128
000164  9f088fff  addli r17, r30, -64
000168  1f097000  addli r18, zero, 56
00016c  6706cfff  storeli.w r28, -160(r30)
000170  0b927030  div.s r4, r1, r7
000174  1f042408  addli r8, r8, 1040
000178  67418ffe  storeli.w r8, -236(r30)
00017c  00d40002  load_param_i r8, 1
000180  e7408ffe  storeli.w r8, -244(r30)
000184  e7014ffe  storeli.w r4, -232(r30)
000188  1b326200  slli r4, r4, 6
00018c  0b924018  sub.s r4, r1, r4
000190  9b80f003  andi r1, r1, 63
000194  1b324200  slli r4, r4, 4
000198  e7471ffe  storeli.w r1, -132(r30)
00019c  1b141200  ori r8, r4, 1
0001a0  67014ffe  storeli.w r4, -240(r30)
0001a4  e7008ffe  storeli.w r8, -248(r30)
0001a8  1b142200  ori r8, r4, 2
0001ac  67408ffe  storeli.w r8, -252(r30)
0001b0  1b143200  ori r8, r4, 3
0001b4  67008ffe  storeli.w r8, -256(r30)
0001b8  1b144200  ori r8, r4, 4
0001bc  e74f8ffc  storeli.w r8, -260(r30)
0001c0  1b145200  ori r8, r4, 5
0001c4  e70f8ffc  storeli.w r8, -264(r30)
0001c8  1b146200  ori r8, r4, 6
0001cc  674f8ffc  storeli.w r8, -268(r30)
0001d0  1b147200  ori r8, r4, 7
0001d4  670f8ffc  storeli.w r8, -272(r30)
0001d8  1b148200  ori r8, r4, 8
0001dc  e74e8ffc  storeli.w r8, -276(r30)
0001e0  1b149200  ori r8, r4, 9
0001e4  e70e8ffc  storeli.w r8, -280(r30)
0001e8  1b14a200  ori r8, r4, 10
0001ec  674e8ffc  storeli.w r8, -284(r30)
0001f0  1b14b200  ori r8, r4, 11
0001f4  670e8ffc  storeli.w r8, -288(r30)
0001f8  1b14c200  ori r8, r4, 12
0001fc  e74d8ffc  storeli.w r8, -292(r30)
000200  1b14d200  ori r8, r4, 13
000204  e70d8ffc  storeli.w r8, -296(r30)
000208  1b14e200  ori r8, r4, 14
00020c  674d8ffc  storeli.w r8, -300(r30)
000210  1b14f200  ori r8, r4, 15
000214  670d8ffc  storeli.w r8, -304(r30)
000218  33140228  sext_int2long r[9:10], r4
00021c  2bf2ffff  lui r4, 1048575
000220  1b1202f0  ori r4, r4, 3840
000224  1734c402  sll.d r[9:10], r[9:10], r12
000228  97814100  and r3, r3, r4
00022c  0ba28210  add.ul r[5:6], r[6:7], r[9:10]
000230  0b912110  add.s r2, r3, r2
000234  73344fec  store.d r[5:6], -312(r30)
000238  9f072108  addli r15, r2, 1040
00023c  e743fffc  storeli.w r15, -452(r30)
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
000270  e3013ffe  loadli.w r3,  -232(r30)
000274  8b9b3010  add.s r23, r1, r3
000278  e3002ffe  loadli.w r1,  -240(r30)
00027c  ab0100f0  lui r3, 983040
000280  1bbcab00  slli r24, r23, 10
000284  97913300  or r3, r7, r3
000288  8b101c10  add.s r1, r24, r1
00028c  33920028  sext_int2long r[5:6], r1
000290  ab0000f0  lui r1, 983040
000294  1734b202  sll.d r[9:10], r[5:6], r11
000298  6b520f00  load.d r[5:6], 0(r30)
00029c  97901300  or r1, r7, r1
0002a0  73388ff6  store.d r[9:10], -144(r30)
0002a4  0b228210  add.ul r[5:6], r[5:6], r[9:10]
0002a8  ff210201  l_gm2lm r3, r16, 0(r[5:6])
0002ac  eb518fec  load.d r[4:5], -312(r30)
0002b0  ffa01101  l_gm2lm r1, r17, 0(r[4:5])
0002b4  00a00000  mfence { lm }
0002b8  e3000fff  loadli.w r1,  -128(r30)
0002bc  63028fff  loadli.w r4,  -64(r30)
0002c0  e3410fff  loadli.w r3,  -124(r30)
0002c4  e3428fff  loadli.w r5,  -60(r30)
0002c8  8be95110  add.f.rn r19, r3, r5
0002cc  0be74010  add.f.rn r14, r1, r4
0002d0  1f030700  addli r6, r14, 0
0002d4  9f810900  addli r3, r19, 0
0002d8  3fb07b00  blt.s r23, r7, 12
0002dc  2b0380ff  lui r6, 1046528
0002e0  ab0180ff  lui r3, 1046528
0002e4  9fc00800  addli r1, r17, 4
0002e8  1f020000  addli r4, zero, 0
0002ec  e7461ffe  storeli.w r1, -148(r30)
0002f0  db020000  j 20
0002f4  1f021200  addli r4, r4, 8
0002f8  9f810200  addli r3, r5, 0
0002fc  1f830000  addli r6, r1, 0
000300  37052201  beq r4, r18, 320
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
00038c  3fa07b00  blt.s r23, r7, 8
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
000404  bfcb7bfe  blt.s r23, r7, -272
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
000484  b746020e  beq r4, zero, 7600
000488  bbd6000e  bneq r1, zero, 7604
00048c  37a00200  beq r5, zero, 8
000490  9f820000  addli r5, r1, 0
000494  93603006  setle.f r1, zero, r3
000498  13e20106  setle.f r4, r3, zero
00049c  97001200  and r1, r4, r1
0004a0  3ba00000  bneq r1, zero, 8
0004a4  9f820100  addli r5, r3, 0
0004a8  e3004ffe  loadli.w r1,  -224(r30)
0004ac  73e05000  stores.w r5, 0(r1)
0004b0  00a00300  mfence { lm, sm, gm }
0004b4  80210e04  csr_set csr3, r28
0004b8  00d00100  sync_group
0004bc  e340fffe  loadli.w r1,  -132(r30)
0004c0  3bd5000e  bneq r1, zero, 7508
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
000510  37da0210  beq r5, zero, 8852
000514  3b6a0210  bneq r4, zero, 8856
000518  37a00000  beq r1, zero, 8
00051c  9f000200  addli r1, r4, 0
000520  13623006  setle.f r4, zero, r3
000524  93e20106  setle.f r5, r3, zero
000528  670c3ffd  storeli.w r19, -320(r30)
00052c  17824200  and r4, r5, r4
000530  3b200200  bneq r4, zero, 8
000534  9f800100  addli r1, r3, 0
000538  ef498100  loads.w r19, 8(r2)
00053c  9f810000  addli r3, r1, 0
000540  13e21904  setlt.f r4, r19, r1
000544  3b200200  bneq r4, zero, 8
000548  9f810900  addli r3, r19, 0
00054c  1bb29900  slli r4, r19, 9
000550  9bb29000  slli r5, r1, 9
000554  1bc37901  srli r6, r19, 23
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
000580  b7680210  beq r4, zero, 8760
000584  bbf80010  bneq r1, zero, 8764
000588  37a00900  beq r19, zero, 8
00058c  9f890000  addli r19, r1, 0
000590  93603006  setle.f r1, zero, r3
000594  13e20106  setle.f r4, r3, zero
000598  674ceffc  storeli.w r14, -316(r30)
00059c  97001200  and r1, r4, r1
0005a0  3ba00000  bneq r1, zero, 8
0005a4  9f890100  addli r19, r3, 0
0005a8  ef40c103  loads.w r1, 60(r2)
0005ac  ef42c100  loads.w r5, 12(r2)
0005b0  6f450101  loads.w r10, 16(r2)
0005b4  ef4a4101  loads.w r21, 20(r2)
0005b8  6f478101  loads.w r14, 24(r2)
0005bc  ef4dc101  loads.w r27, 28(r2)
0005c0  6f4e0102  loads.w r28, 32(r2)
0005c4  ef464102  loads.w r13, 36(r2)
0005c8  6f448102  loads.w r8, 40(r2)
0005cc  6f43c102  loads.w r6, 44(r2)
0005d0  ef410103  loads.w r3, 48(r2)
0005d4  6f464103  loads.w r12, 52(r2)
0005d8  ef458103  loads.w r11, 56(r2)
0005dc  ef470107  loads.w r15, 112(r2)
0005e0  6f4b810c  loads.w r22, 200(r2)
0005e4  6f4d410d  loads.w r26, 212(r2)
0005e8  ef4c410e  loads.w r25, 228(r2)
0005ec  e7498ffd  storeli.w r24, -356(r30)
0005f0  67041ffc  storeli.w r1, -448(r30)
0005f4  ef400104  loads.w r1, 64(r2)
0005f8  93e43205  setlt.f r9, r5, r19
0005fc  67441ffc  storeli.w r1, -444(r30)
000600  ef404104  loads.w r1, 68(r2)
000604  67421ffe  storeli.w r1, -220(r30)
000608  ef408104  loads.w r1, 72(r2)
00060c  e7041ffc  storeli.w r1, -440(r30)
000610  ef40c104  loads.w r1, 76(r2)
000614  e7021ffe  storeli.w r1, -216(r30)
000618  ef400105  loads.w r1, 80(r2)
00061c  e7441ffc  storeli.w r1, -436(r30)
000620  ef404105  loads.w r1, 84(r2)
000624  e7421ffe  storeli.w r1, -212(r30)
000628  ef408105  loads.w r1, 88(r2)
00062c  67051ffc  storeli.w r1, -432(r30)
000630  ef40c105  loads.w r1, 92(r2)
000634  67031ffe  storeli.w r1, -208(r30)
000638  ef400106  loads.w r1, 96(r2)
00063c  67451ffc  storeli.w r1, -428(r30)
000640  ef404106  loads.w r1, 100(r2)
000644  67431ffe  storeli.w r1, -204(r30)
000648  ef408106  loads.w r1, 104(r2)
00064c  e7051ffc  storeli.w r1, -424(r30)
000650  ef40c106  loads.w r1, 108(r2)
000654  e7031ffe  storeli.w r1, -200(r30)
000658  ef404107  loads.w r1, 116(r2)
00065c  e7431ffe  storeli.w r1, -196(r30)
000660  ef408107  loads.w r1, 120(r2)
000664  e7451ffc  storeli.w r1, -420(r30)
000668  ef40c107  loads.w r1, 124(r2)
00066c  67041ffe  storeli.w r1, -192(r30)
000670  ef400108  loads.w r1, 128(r2)
000674  67061ffc  storeli.w r1, -416(r30)
000678  ef404108  loads.w r1, 132(r2)
00067c  67461ffc  storeli.w r1, -412(r30)
000680  ef408108  loads.w r1, 136(r2)
000684  67441ffe  storeli.w r1, -188(r30)
000688  ef40c108  loads.w r1, 140(r2)
00068c  e7061ffc  storeli.w r1, -408(r30)
000690  ef400109  loads.w r1, 144(r2)
000694  e7041ffe  storeli.w r1, -184(r30)
000698  ef404109  loads.w r1, 148(r2)
00069c  e7461ffc  storeli.w r1, -404(r30)
0006a0  ef408109  loads.w r1, 152(r2)
0006a4  e7441ffe  storeli.w r1, -180(r30)
0006a8  ef40c109  loads.w r1, 156(r2)
0006ac  67471ffc  storeli.w r1, -396(r30)
0006b0  ef40010a  loads.w r1, 160(r2)
0006b4  67051ffe  storeli.w r1, -176(r30)
0006b8  ef40410a  loads.w r1, 164(r2)
0006bc  e7471ffc  storeli.w r1, -388(r30)
0006c0  ef40810a  loads.w r1, 168(r2)
0006c4  67451ffe  storeli.w r1, -172(r30)
0006c8  ef40c10a  loads.w r1, 172(r2)
0006cc  67081ffc  storeli.w r1, -384(r30)
0006d0  ef40010b  loads.w r1, 176(r2)
0006d4  e7051ffe  storeli.w r1, -168(r30)
0006d8  ef40410b  loads.w r1, 180(r2)
0006dc  67481ffc  storeli.w r1, -380(r30)
0006e0  ef40810b  loads.w r1, 184(r2)
0006e4  e7451ffe  storeli.w r1, -164(r30)
0006e8  ef40c10b  loads.w r1, 188(r2)
0006ec  e7081ffc  storeli.w r1, -376(r30)
0006f0  ef40010c  loads.w r1, 192(r2)
0006f4  67461ffe  storeli.w r1, -156(r30)
0006f8  ef40410c  loads.w r1, 196(r2)
0006fc  e7481ffc  storeli.w r1, -372(r30)
000700  ef40c10c  loads.w r1, 204(r2)
000704  e7061ffe  storeli.w r1, -152(r30)
000708  ef40010d  loads.w r1, 208(r2)
00070c  e7091ffc  storeli.w r1, -360(r30)
000710  ef40810d  loads.w r1, 216(r2)
000714  67091ffc  storeli.w r1, -368(r30)
000718  ef40c10d  loads.w r1, 220(r2)
00071c  670a1ffc  storeli.w r1, -352(r30)
000720  ef40010e  loads.w r1, 224(r2)
000724  674a1ffc  storeli.w r1, -348(r30)
000728  ef40810e  loads.w r1, 232(r2)
00072c  e70a1ffc  storeli.w r1, -344(r30)
000730  ef40c10e  loads.w r1, 236(r2)
000734  e74a1ffc  storeli.w r1, -340(r30)
000738  ef40010f  loads.w r1, 240(r2)
00073c  670b1ffc  storeli.w r1, -336(r30)
000740  ef40410f  loads.w r1, 244(r2)
000744  674b1ffc  storeli.w r1, -332(r30)
000748  ef40810f  loads.w r1, 248(r2)
00074c  e70b1ffc  storeli.w r1, -328(r30)
000750  ef40c10f  loads.w r1, 252(r2)
000754  e74b1ffc  storeli.w r1, -324(r30)
000758  9f800900  addli r1, r19, 0
00075c  3ba00400  bneq r9, zero, 8
000760  9f800200  addli r1, r5, 0
000764  9bb49200  slli r9, r5, 9
000768  1bbc9900  slli r24, r19, 9
00076c  1bc27201  srli r4, r5, 23
000770  1bca7901  srli r20, r19, 23
000774  93840400  seteq r9, r9, zero
000778  130c0c00  seteq r24, r24, zero
00077c  1b02f20f  andi r4, r4, 255
000780  1b0afa0f  andi r20, r20, 255
000784  1b72f20f  setlti r4, r4, 255
000788  1b7afa0f  setlti r20, r20, 255
00078c  17129200  or r4, r4, r9
000790  97148a01  or r9, r20, r24
000794  17824400  and r4, r9, r4
000798  b7500210  beq r4, zero, 8244
00079c  bbe00910  bneq r19, zero, 8248
0007a0  634c3ffd  loadli.w r24,  -356(r30)
0007a4  37a00200  beq r5, zero, 8
0007a8  9f820900  addli r5, r19, 0
0007ac  13621006  setle.f r4, zero, r1
0007b0  93e40006  setle.f r9, r1, zero
0007b4  6707affd  storeli.w r26, -400(r30)
0007b8  17824400  and r4, r9, r4
0007bc  3b200200  bneq r4, zero, 8
0007c0  9f820000  addli r5, r1, 0
0007c4  13625504  setlt.f r4, r10, r5
0007c8  9f800200  addli r1, r5, 0
0007cc  1f8d0700  addli r26, r15, 0
0007d0  3b200200  bneq r4, zero, 8
0007d4  9f000500  addli r1, r10, 0
0007d8  1b329500  slli r4, r10, 9
0007dc  9bb49200  slli r9, r5, 9
0007e0  9b497501  srli r19, r10, 23
0007e4  1bca7201  srli r20, r5, 23
0007e8  e3477ffc  loadli.w r15,  -452(r30)
0007ec  13020200  seteq r4, r4, zero
0007f0  93840400  seteq r9, r9, zero
0007f4  9b89f90f  andi r19, r19, 255
0007f8  1b0afa0f  andi r20, r20, 255
0007fc  9bf9f90f  setlti r19, r19, 255
000800  1b7afa0f  setlti r20, r20, 255
000804  17924900  or r4, r19, r4
000808  97149a00  or r9, r20, r9
00080c  17824400  and r4, r9, r4
000810  3b200200  bneq r4, zero, 8
000814  ab00c07f  lui r1, 523264
000818  67499ffd  storeli.w r25, -364(r30)
00081c  e7076ffd  storeli.w r22, -392(r30)
000820  37a00200  beq r5, zero, 8
000824  9f820000  addli r5, r1, 0
000828  e34ceffc  loadli.w r25,  -396(r30)
00082c  630b8ffc  loadli.w r22,  -448(r30)
000830  37200500  beq r10, zero, 8
000834  1f850200  addli r10, r5, 0
000838  13621006  setle.f r4, zero, r1
00083c  93e20006  setle.f r5, r1, zero
000840  17824200  and r4, r5, r4
000844  3b200200  bneq r4, zero, 8
000848  1f850000  addli r10, r1, 0
00084c  13e2aa04  setlt.f r4, r21, r10
000850  9f000500  addli r1, r10, 0
000854  3b200200  bneq r4, zero, 8
000858  9f800a00  addli r1, r21, 0
00085c  1bb29a00  slli r4, r21, 9
000860  9b329500  slli r5, r10, 9
000864  9bc47a01  srli r9, r21, 23
000868  9b497501  srli r19, r10, 23
00086c  13020200  seteq r4, r4, zero
000870  93820200  seteq r5, r5, zero
000874  9b84f40f  andi r9, r9, 255
000878  9b89f90f  andi r19, r19, 255
00087c  9bf4f40f  setlti r9, r9, 255
000880  9bf9f90f  setlti r19, r19, 255
000884  17924400  or r4, r9, r4
000888  97925900  or r5, r19, r5
00088c  17824200  and r4, r5, r4
000890  3b200200  bneq r4, zero, 8
000894  ab00c07f  lui r1, 523264
000898  634acffc  loadli.w r20,  -412(r30)
00089c  e309cffc  loadli.w r19,  -416(r30)
0008a0  37200500  beq r10, zero, 8
0008a4  1f850000  addli r10, r1, 0
0008a8  37a00a00  beq r21, zero, 8
0008ac  9f0a0500  addli r21, r10, 0
0008b0  13621006  setle.f r4, zero, r1
0008b4  93e20006  setle.f r5, r1, zero
0008b8  17824200  and r4, r5, r4
0008bc  3b200200  bneq r4, zero, 8
0008c0  9f8a0000  addli r21, r1, 0
0008c4  13625705  setlt.f r4, r14, r21
0008c8  9f800a00  addli r1, r21, 0
0008cc  3b200200  bneq r4, zero, 8
0008d0  9f000700  addli r1, r14, 0
0008d4  1b329700  slli r4, r14, 9
0008d8  9bb29a00  slli r5, r21, 9
0008dc  9b447701  srli r9, r14, 23
0008e0  1bc57a01  srli r10, r21, 23
0008e4  13020200  seteq r4, r4, zero
0008e8  93820200  seteq r5, r5, zero
0008ec  9b84f40f  andi r9, r9, 255
0008f0  1b05f50f  andi r10, r10, 255
0008f4  9bf4f40f  setlti r9, r9, 255
0008f8  1b75f50f  setlti r10, r10, 255
0008fc  17924400  or r4, r9, r4
000900  97125500  or r5, r10, r5
000904  17824200  and r4, r5, r4
000908  377b020e  beq r4, zero, 7900
00090c  bb8b0a0e  bneq r21, zero, 7904
000910  37200700  beq r14, zero, 8
000914  1f870a00  addli r14, r21, 0
000918  13621006  setle.f r4, zero, r1
00091c  93e20006  setle.f r5, r1, zero
000920  17824200  and r4, r5, r4
000924  3b200200  bneq r4, zero, 8
000928  1f870000  addli r14, r1, 0
00092c  13e2ed04  setlt.f r4, r27, r14
000930  e34abffc  loadli.w r21,  -420(r30)
000934  9f000700  addli r1, r14, 0
000938  3b200200  bneq r4, zero, 8
00093c  9f800d00  addli r1, r27, 0
000940  1bb29d00  slli r4, r27, 9
000944  9b329700  slli r5, r14, 9
000948  9bc47d01  srli r9, r27, 23
00094c  1b457701  srli r10, r14, 23
000950  13020200  seteq r4, r4, zero
000954  93820200  seteq r5, r5, zero
000958  9b84f40f  andi r9, r9, 255
00095c  1b05f50f  andi r10, r10, 255
000960  9bf4f40f  setlti r9, r9, 255
000964  1b75f50f  setlti r10, r10, 255
000968  17924400  or r4, r9, r4
00096c  97125500  or r5, r10, r5
000970  17824200  and r4, r5, r4
000974  371a020e  beq r4, zero, 7812
000978  3b2a070e  bneq r14, zero, 7816
00097c  37a00d00  beq r27, zero, 8
000980  9f0d0700  addli r27, r14, 0
000984  13621006  setle.f r4, zero, r1
000988  93e20006  setle.f r5, r1, zero
00098c  17824200  and r4, r5, r4
000990  3b200200  bneq r4, zero, 8
000994  9f8d0000  addli r27, r1, 0
000998  1362be05  setlt.f r4, r28, r27
00099c  63079ffc  loadli.w r14,  -440(r30)
0009a0  9f800d00  addli r1, r27, 0
0009a4  3b200200  bneq r4, zero, 8
0009a8  9f000e00  addli r1, r28, 0
0009ac  1b329e00  slli r4, r28, 9
0009b0  9bb29d00  slli r5, r27, 9
0009b4  9b447e01  srli r9, r28, 23
0009b8  1bc57d01  srli r10, r27, 23
0009bc  13020200  seteq r4, r4, zero
0009c0  93820200  seteq r5, r5, zero
0009c4  9b84f40f  andi r9, r9, 255
0009c8  1b05f50f  andi r10, r10, 255
0009cc  9bf4f40f  setlti r9, r9, 255
0009d0  1b75f50f  setlti r10, r10, 255
0009d4  17924400  or r4, r9, r4
0009d8  97125500  or r5, r10, r5
0009dc  17824200  and r4, r5, r4
0009e0  b738020e  beq r4, zero, 7724
0009e4  bbc80d0e  bneq r27, zero, 7728
0009e8  37200e00  beq r28, zero, 8
0009ec  1f8e0d00  addli r28, r27, 0
0009f0  13621006  setle.f r4, zero, r1
0009f4  93e20006  setle.f r5, r1, zero
0009f8  17824200  and r4, r5, r4
0009fc  3b200200  bneq r4, zero, 8
000a00  1f8e0000  addli r28, r1, 0
000a04  13e2c605  setlt.f r4, r13, r28
000a08  e34d8ffc  loadli.w r27,  -444(r30)
000a0c  9f000e00  addli r1, r28, 0
000a10  3b200200  bneq r4, zero, 8
000a14  9f800600  addli r1, r13, 0
000a18  1bb29600  slli r4, r13, 9
000a1c  9b329e00  slli r5, r28, 9
000a20  9bc47601  srli r9, r13, 23
000a24  1b457e01  srli r10, r28, 23
000a28  13020200  seteq r4, r4, zero
000a2c  93820200  seteq r5, r5, zero
000a30  9b84f40f  andi r9, r9, 255
000a34  1b05f50f  andi r10, r10, 255
000a38  9bf4f40f  setlti r9, r9, 255
000a3c  1b75f50f  setlti r10, r10, 255
000a40  17924400  or r4, r9, r4
000a44  97125500  or r5, r10, r5
000a48  17824200  and r4, r5, r4
000a4c  3757020e  beq r4, zero, 7636
000a50  3b670e0e  bneq r28, zero, 7640
000a54  37a00600  beq r13, zero, 8
000a58  9f060e00  addli r13, r28, 0
000a5c  13621006  setle.f r4, zero, r1
000a60  93e20006  setle.f r5, r1, zero
000a64  17824200  and r4, r5, r4
000a68  3b200200  bneq r4, zero, 8
000a6c  9f860000  addli r13, r1, 0
000a70  1362d404  setlt.f r4, r8, r13
000a74  634e9ffc  loadli.w r28,  -436(r30)
000a78  9f800600  addli r1, r13, 0
000a7c  3b200200  bneq r4, zero, 8
000a80  9f000400  addli r1, r8, 0
000a84  1b329400  slli r4, r8, 9
000a88  9bb29600  slli r5, r13, 9
000a8c  9b447401  srli r9, r8, 23
000a90  1bc57601  srli r10, r13, 23
000a94  13020200  seteq r4, r4, zero
000a98  93820200  seteq r5, r5, zero
000a9c  9b84f40f  andi r9, r9, 255
000aa0  1b05f50f  andi r10, r10, 255
000aa4  9bf4f40f  setlti r9, r9, 255
000aa8  1b75f50f  setlti r10, r10, 255
000aac  17924400  or r4, r9, r4
000ab0  97125500  or r5, r10, r5
000ab4  17824200  and r4, r5, r4
000ab8  b775020e  beq r4, zero, 7548
000abc  3b86060e  bneq r13, zero, 7552
000ac0  37200400  beq r8, zero, 8
000ac4  1f840600  addli r8, r13, 0
000ac8  13621006  setle.f r4, zero, r1
000acc  93e20006  setle.f r5, r1, zero
000ad0  17824200  and r4, r5, r4
000ad4  3b200200  bneq r4, zero, 8
000ad8  1f840000  addli r8, r1, 0
000adc  13628304  setlt.f r4, r6, r8
000ae0  e306bffc  loadli.w r13,  -424(r30)
000ae4  9f000400  addli r1, r8, 0
000ae8  3b200200  bneq r4, zero, 8
000aec  9f000300  addli r1, r6, 0
000af0  1b329300  slli r4, r6, 9
000af4  9b329400  slli r5, r8, 9
000af8  9b447301  srli r9, r6, 23
000afc  1b457401  srli r10, r8, 23
000b00  13020200  seteq r4, r4, zero
000b04  93820200  seteq r5, r5, zero
000b08  9b84f40f  andi r9, r9, 255
000b0c  1b05f50f  andi r10, r10, 255
000b10  9bf4f40f  setlti r9, r9, 255
000b14  1b75f50f  setlti r10, r10, 255
000b18  17924400  or r4, r9, r4
000b1c  97125500  or r5, r10, r5
000b20  17824200  and r4, r5, r4
000b24  b714020e  beq r4, zero, 7460
000b28  6345dffc  loadli.w r10,  -404(r30)
000b2c  bb24040e  bneq r8, zero, 7464
000b30  37200300  beq r6, zero, 8
000b34  1f030400  addli r6, r8, 0
000b38  13621006  setle.f r4, zero, r1
000b3c  93e20006  setle.f r5, r1, zero
000b40  17824200  and r4, r5, r4
000b44  3b200200  bneq r4, zero, 8
000b48  1f830000  addli r6, r1, 0
000b4c  13e26104  setlt.f r4, r3, r6
000b50  9f000300  addli r1, r6, 0
000b54  3b200200  bneq r4, zero, 8
000b58  9f800100  addli r1, r3, 0
000b5c  1bb29100  slli r4, r3, 9
000b60  9b329300  slli r5, r6, 9
000b64  1bc47101  srli r8, r3, 23
000b68  9b447301  srli r9, r6, 23
000b6c  13020200  seteq r4, r4, zero
000b70  93820200  seteq r5, r5, zero
000b74  1b04f40f  andi r8, r8, 255
000b78  9b84f40f  andi r9, r9, 255
000b7c  1b74f40f  setlti r8, r8, 255
000b80  9bf4f40f  setlti r9, r9, 255
000b84  17124400  or r4, r8, r4
000b88  97925400  or r5, r9, r5
000b8c  17824200  and r4, r5, r4
000b90  3743020e  beq r4, zero, 7376
000b94  e304dffc  loadli.w r9,  -408(r30)
000b98  3b53030e  bneq r6, zero, 7380
000b9c  37a00100  beq r3, zero, 8
000ba0  9f010300  addli r3, r6, 0
000ba4  13621006  setle.f r4, zero, r1
000ba8  93e20006  setle.f r5, r1, zero
000bac  17824200  and r4, r5, r4
000bb0  3b200200  bneq r4, zero, 8
000bb4  9f810000  addli r3, r1, 0
000bb8  13623604  setlt.f r4, r12, r3
000bbc  9f800100  addli r1, r3, 0
000bc0  3b200200  bneq r4, zero, 8
000bc4  9f000600  addli r1, r12, 0
000bc8  1b329600  slli r4, r12, 9
000bcc  9bb29100  slli r5, r3, 9
000bd0  1b437601  srli r6, r12, 23
000bd4  1bc47101  srli r8, r3, 23
000bd8  13020200  seteq r4, r4, zero
000bdc  93820200  seteq r5, r5, zero
000be0  1b03f30f  andi r6, r6, 255
000be4  1b04f40f  andi r8, r8, 255
000be8  1b73f30f  setlti r6, r6, 255
000bec  1b74f40f  setlti r8, r8, 255
000bf0  17124300  or r4, r6, r4
000bf4  97125400  or r5, r8, r5
000bf8  17824200  and r4, r5, r4
000bfc  b771020e  beq r4, zero, 7292
000c00  6344fffc  loadli.w r8,  -388(r30)
000c04  3b82010e  bneq r3, zero, 7296
000c08  37200600  beq r12, zero, 8
000c0c  1f860100  addli r12, r3, 0
000c10  93611006  setle.f r3, zero, r1
000c14  13e20006  setle.f r4, r1, zero
000c18  97013200  and r3, r4, r3
000c1c  3ba00100  bneq r3, zero, 8
000c20  1f860000  addli r12, r1, 0
000c24  93e1c504  setlt.f r3, r11, r12
000c28  9f000600  addli r1, r12, 0
000c2c  3ba00100  bneq r3, zero, 8
000c30  9f800500  addli r1, r11, 0
000c34  9bb19500  slli r3, r11, 9
000c38  1b329600  slli r4, r12, 9
000c3c  9bc27501  srli r5, r11, 23
000c40  1b437601  srli r6, r12, 23
000c44  93810100  seteq r3, r3, zero
000c48  13020200  seteq r4, r4, zero
000c4c  9b82f20f  andi r5, r5, 255
000c50  1b03f30f  andi r6, r6, 255
000c54  9bf2f20f  setlti r5, r5, 255
000c58  1b73f30f  setlti r6, r6, 255
000c5c  97913200  or r3, r5, r3
000c60  17124300  or r4, r6, r4
000c64  97013200  and r3, r4, r3
000c68  b7a0010e  beq r3, zero, 7208
000c6c  bb30060e  bneq r12, zero, 7212
000c70  37a00500  beq r11, zero, 8
000c74  9f050600  addli r11, r12, 0
000c78  93611006  setle.f r3, zero, r1
000c7c  13e20006  setle.f r4, r1, zero
000c80  97013200  and r3, r4, r3
000c84  3ba00100  bneq r3, zero, 8
000c88  9f850000  addli r11, r1, 0
000c8c  9361bb04  setlt.f r3, r22, r11
000c90  6346affc  loadli.w r12,  -428(r30)
000c94  9f800500  addli r1, r11, 0
000c98  3ba00100  bneq r3, zero, 8
000c9c  9f000b00  addli r1, r22, 0
000ca0  9b319b00  slli r3, r22, 9
000ca4  1bb29500  slli r4, r11, 9
000ca8  9b427b01  srli r5, r22, 23
000cac  1bc37501  srli r6, r11, 23
000cb0  93810100  seteq r3, r3, zero
000cb4  13020200  seteq r4, r4, zero
000cb8  9b82f20f  andi r5, r5, 255
000cbc  1b03f30f  andi r6, r6, 255
000cc0  9bf2f20f  setlti r5, r5, 255
000cc4  1b73f30f  setlti r6, r6, 255
000cc8  97913200  or r3, r5, r3
000ccc  17124300  or r4, r6, r4
000cd0  97013200  and r3, r4, r3
000cd4  37cf010c  beq r3, zero, 7120
000cd8  3bdf050c  bneq r11, zero, 7124
000cdc  37200b00  beq r22, zero, 8
000ce0  1f8b0500  addli r22, r11, 0
000ce4  93611006  setle.f r3, zero, r1
000ce8  13e20006  setle.f r4, r1, zero
000cec  97013200  and r3, r4, r3
000cf0  3ba00100  bneq r3, zero, 8
000cf4  1f8b0000  addli r22, r1, 0
000cf8  93e16d05  setlt.f r3, r27, r22
000cfc  e305affc  loadli.w r11,  -432(r30)
000d00  9f000b00  addli r1, r22, 0
000d04  3ba00100  bneq r3, zero, 8
000d08  9f800d00  addli r1, r27, 0
000d0c  9bb19d00  slli r3, r27, 9
000d10  1b329b00  slli r4, r22, 9
000d14  9bc27d01  srli r5, r27, 23
000d18  1b437b01  srli r6, r22, 23
000d1c  93810100  seteq r3, r3, zero
000d20  13020200  seteq r4, r4, zero
000d24  9b82f20f  andi r5, r5, 255
000d28  1b03f30f  andi r6, r6, 255
000d2c  9bf2f20f  setlti r5, r5, 255
000d30  1b73f30f  setlti r6, r6, 255
000d34  97913200  or r3, r5, r3
000d38  17124300  or r4, r6, r4
000d3c  97013200  and r3, r4, r3
000d40  b7ed010c  beq r3, zero, 7032
000d44  e3424ffe  loadli.w r5,  -220(r30)
000d48  bb7d0b0c  bneq r22, zero, 7036
000d4c  37a00d00  beq r27, zero, 8
000d50  9f0d0b00  addli r27, r22, 0
000d54  93611006  setle.f r3, zero, r1
000d58  13e20006  setle.f r4, r1, zero
000d5c  97013200  and r3, r4, r3
000d60  3ba00100  bneq r3, zero, 8
000d64  9f8d0000  addli r27, r1, 0
000d68  93e1b205  setlt.f r3, r5, r27
000d6c  630b4ffd  loadli.w r22,  -352(r30)
000d70  9f800d00  addli r1, r27, 0
000d74  3ba00100  bneq r3, zero, 8
000d78  9f800200  addli r1, r5, 0
000d7c  9bb19200  slli r3, r5, 9
000d80  1bb29d00  slli r4, r27, 9
000d84  9bc27201  srli r5, r5, 23
000d88  1bc37d01  srli r6, r27, 23
000d8c  93810100  seteq r3, r3, zero
000d90  13020200  seteq r4, r4, zero
000d94  9b82f20f  andi r5, r5, 255
000d98  1b03f30f  andi r6, r6, 255
000d9c  9bf2f20f  setlti r5, r5, 255
000da0  1b73f30f  setlti r6, r6, 255
000da4  97913200  or r3, r5, r3
000da8  17124300  or r4, r6, r4
000dac  97013200  and r3, r4, r3
000db0  b78c010c  beq r3, zero, 6944
000db4  bb9c0d0c  bneq r27, zero, 6948
000db8  63434ffe  loadli.w r6,  -220(r30)
000dbc  37200300  beq r6, zero, 8
000dc0  1f830d00  addli r6, r27, 0
000dc4  93611006  setle.f r3, zero, r1
000dc8  13e20006  setle.f r4, r1, zero
000dcc  97013200  and r3, r4, r3
000dd0  3ba00100  bneq r3, zero, 8
000dd4  1f830000  addli r6, r1, 0
000dd8  93616704  setlt.f r3, r14, r6
000ddc  9f000300  addli r1, r6, 0
000de0  3ba00100  bneq r3, zero, 8
000de4  9f000700  addli r1, r14, 0
000de8  9b319700  slli r3, r14, 9
000dec  1b329300  slli r4, r6, 9
000df0  9b427701  srli r5, r14, 23
000df4  9f0d0300  addli r27, r6, 0
000df8  1b437301  srli r6, r6, 23
000dfc  93810100  seteq r3, r3, zero
000e00  13020200  seteq r4, r4, zero
000e04  9b82f20f  andi r5, r5, 255
000e08  1b03f30f  andi r6, r6, 255
000e0c  9bf2f20f  setlti r5, r5, 255
000e10  1b73f30f  setlti r6, r6, 255
000e14  97913200  or r3, r5, r3
000e18  17124300  or r4, r6, r4
000e1c  97013200  and r3, r4, r3
000e20  37ab010c  beq r3, zero, 6856
000e24  e3025ffe  loadli.w r5,  -216(r30)
000e28  3bbb0d0c  bneq r27, zero, 6860
000e2c  37200700  beq r14, zero, 8
000e30  1f870d00  addli r14, r27, 0
000e34  93611006  setle.f r3, zero, r1
000e38  13e20006  setle.f r4, r1, zero
000e3c  97013200  and r3, r4, r3
000e40  3ba00100  bneq r3, zero, 8
000e44  1f870000  addli r14, r1, 0
000e48  93e1e204  setlt.f r3, r5, r14
000e4c  9f000700  addli r1, r14, 0
000e50  3ba00100  bneq r3, zero, 8
000e54  9f800200  addli r1, r5, 0
000e58  9bb19200  slli r3, r5, 9
000e5c  1b329700  slli r4, r14, 9
000e60  9bc27201  srli r5, r5, 23
000e64  1b437701  srli r6, r14, 23
000e68  93810100  seteq r3, r3, zero
000e6c  13020200  seteq r4, r4, zero
000e70  9b82f20f  andi r5, r5, 255
000e74  1b03f30f  andi r6, r6, 255
000e78  9bf2f20f  setlti r5, r5, 255
000e7c  1b73f30f  setlti r6, r6, 255
000e80  97913200  or r3, r5, r3
000e84  17124300  or r4, r6, r4
000e88  97013200  and r3, r4, r3
000e8c  b7d9010c  beq r3, zero, 6772
000e90  bb69070c  bneq r14, zero, 6776
000e94  63035ffe  loadli.w r6,  -216(r30)
000e98  37200300  beq r6, zero, 8
000e9c  1f030700  addli r6, r14, 0
000ea0  93611006  setle.f r3, zero, r1
000ea4  13e20006  setle.f r4, r1, zero
000ea8  97013200  and r3, r4, r3
000eac  3ba00100  bneq r3, zero, 8
000eb0  1f830000  addli r6, r1, 0
000eb4  93616e04  setlt.f r3, r28, r6
000eb8  9f000300  addli r1, r6, 0
000ebc  3ba00100  bneq r3, zero, 8
000ec0  9f000e00  addli r1, r28, 0
000ec4  9b319e00  slli r3, r28, 9
000ec8  1b329300  slli r4, r6, 9
000ecc  9b427e01  srli r5, r28, 23
000ed0  1f070300  addli r14, r6, 0
000ed4  1b437301  srli r6, r6, 23
000ed8  93810100  seteq r3, r3, zero
000edc  13020200  seteq r4, r4, zero
000ee0  9b82f20f  andi r5, r5, 255
000ee4  1b03f30f  andi r6, r6, 255
000ee8  9bf2f20f  setlti r5, r5, 255
000eec  1b73f30f  setlti r6, r6, 255
000ef0  97913200  or r3, r5, r3
000ef4  17124300  or r4, r6, r4
000ef8  97013200  and r3, r4, r3
000efc  37f8010c  beq r3, zero, 6684
000f00  e3425ffe  loadli.w r5,  -212(r30)
000f04  bb08070c  bneq r14, zero, 6688
000f08  37200e00  beq r28, zero, 8
000f0c  1f0e0700  addli r28, r14, 0
000f10  93611006  setle.f r3, zero, r1
000f14  13e20006  setle.f r4, r1, zero
000f18  97013200  and r3, r4, r3
000f1c  3ba00100  bneq r3, zero, 8
000f20  1f8e0000  addli r28, r1, 0
000f24  93e1c205  setlt.f r3, r5, r28
000f28  9f000e00  addli r1, r28, 0
000f2c  3ba00100  bneq r3, zero, 8
000f30  9f800200  addli r1, r5, 0
000f34  9bb19200  slli r3, r5, 9
000f38  1b329e00  slli r4, r28, 9
000f3c  9bc27201  srli r5, r5, 23
000f40  1b437e01  srli r6, r28, 23
000f44  93810100  seteq r3, r3, zero
000f48  13020200  seteq r4, r4, zero
000f4c  9b82f20f  andi r5, r5, 255
000f50  1b03f30f  andi r6, r6, 255
000f54  9bf2f20f  setlti r5, r5, 255
000f58  1b73f30f  setlti r6, r6, 255
000f5c  97913200  or r3, r5, r3
000f60  17124300  or r4, r6, r4
000f64  97013200  and r3, r4, r3
000f68  3ba00100  bneq r3, zero, 8
000f6c  ab00c07f  lui r1, 523264
000f70  37200e00  beq r28, zero, 8
000f74  1f8e0000  addli r28, r1, 0
000f78  9f010e00  addli r3, r28, 0
000f7c  634e0ffd  loadli.w r28,  -380(r30)
000f80  63435ffe  loadli.w r6,  -212(r30)
000f84  37200300  beq r6, zero, 8
000f88  1f830100  addli r6, r3, 0
000f8c  93611006  setle.f r3, zero, r1
000f90  13e20006  setle.f r4, r1, zero
000f94  1f070b00  addli r14, r22, 0
000f98  97013200  and r3, r4, r3
000f9c  3ba00100  bneq r3, zero, 8
000fa0  1f830000  addli r6, r1, 0
000fa4  93e16504  setlt.f r3, r11, r6
000fa8  630b3ffd  loadli.w r22,  -360(r30)
000fac  9f000300  addli r1, r6, 0
000fb0  3ba00100  bneq r3, zero, 8
000fb4  9f800500  addli r1, r11, 0
000fb8  9bb19500  slli r3, r11, 9
000fbc  1b329300  slli r4, r6, 9
000fc0  9bc27501  srli r5, r11, 23
000fc4  9f0d0300  addli r27, r6, 0
000fc8  1b437301  srli r6, r6, 23
000fcc  93810100  seteq r3, r3, zero
000fd0  13020200  seteq r4, r4, zero
000fd4  9b82f20f  andi r5, r5, 255
000fd8  1b03f30f  andi r6, r6, 255
000fdc  9bf2f20f  setlti r5, r5, 255
000fe0  1b73f30f  setlti r6, r6, 255
000fe4  97913200  or r3, r5, r3
000fe8  17124300  or r4, r6, r4
000fec  97013200  and r3, r4, r3
000ff0  3785010c  beq r3, zero, 6464
000ff4  e3026ffe  loadli.w r5,  -208(r30)
000ff8  3b950d0c  bneq r27, zero, 6468
000ffc  37a00500  beq r11, zero, 8
001000  9f850d00  addli r11, r27, 0
001004  93611006  setle.f r3, zero, r1
001008  13e20006  setle.f r4, r1, zero
00100c  97013200  and r3, r4, r3
001010  3ba00100  bneq r3, zero, 8
001014  9f850000  addli r11, r1, 0
001018  93e1b204  setlt.f r3, r5, r11
00101c  9f800500  addli r1, r11, 0
001020  9f0d0b00  addli r27, r22, 0
001024  3ba00100  bneq r3, zero, 8
001028  9f800200  addli r1, r5, 0
00102c  9bb19200  slli r3, r5, 9
001030  1bb29500  slli r4, r11, 9
001034  9bc27201  srli r5, r5, 23
001038  1bc37501  srli r6, r11, 23
00103c  1f0b0700  addli r22, r14, 0
001040  93810100  seteq r3, r3, zero
001044  13020200  seteq r4, r4, zero
001048  9b82f20f  andi r5, r5, 255
00104c  1b03f30f  andi r6, r6, 255
001050  9bf2f20f  setlti r5, r5, 255
001054  1b73f30f  setlti r6, r6, 255
001058  97913200  or r3, r5, r3
00105c  17124300  or r4, r6, r4
001060  97013200  and r3, r4, r3
001064  b793010c  beq r3, zero, 6372
001068  1f070e00  addli r14, r28, 0
00106c  bba3050c  bneq r11, zero, 6376
001070  63036ffe  loadli.w r6,  -208(r30)
001074  37200300  beq r6, zero, 8
001078  1f830500  addli r6, r11, 0
00107c  93611006  setle.f r3, zero, r1
001080  13e20006  setle.f r4, r1, zero
001084  97013200  and r3, r4, r3
001088  3ba00100  bneq r3, zero, 8
00108c  1f830000  addli r6, r1, 0
001090  93616604  setlt.f r3, r12, r6
001094  9f000300  addli r1, r6, 0
001098  3ba00100  bneq r3, zero, 8
00109c  9f000600  addli r1, r12, 0
0010a0  9b319600  slli r3, r12, 9
0010a4  1b329300  slli r4, r6, 9
0010a8  9b427601  srli r5, r12, 23
0010ac  9f050300  addli r11, r6, 0
0010b0  1b437301  srli r6, r6, 23
0010b4  93810100  seteq r3, r3, zero
0010b8  13020200  seteq r4, r4, zero
0010bc  9b82f20f  andi r5, r5, 255
0010c0  1b03f30f  andi r6, r6, 255
0010c4  9bf2f20f  setlti r5, r5, 255
0010c8  1b73f30f  setlti r6, r6, 255
0010cc  97913200  or r3, r5, r3
0010d0  17124300  or r4, r6, r4
0010d4  97013200  and r3, r4, r3
0010d8  37b2010c  beq r3, zero, 6284
0010dc  e3426ffe  loadli.w r5,  -204(r30)
0010e0  3bc2050c  bneq r11, zero, 6288
0010e4  37200600  beq r12, zero, 8
0010e8  1f860500  addli r12, r11, 0
0010ec  93611006  setle.f r3, zero, r1
0010f0  13e20006  setle.f r4, r1, zero
0010f4  97013200  and r3, r4, r3
0010f8  3ba00100  bneq r3, zero, 8
0010fc  1f860000  addli r12, r1, 0
001100  93e1c204  setlt.f r3, r5, r12
001104  9f000600  addli r1, r12, 0
001108  3ba00100  bneq r3, zero, 8
00110c  9f800200  addli r1, r5, 0
001110  9bb19200  slli r3, r5, 9
001114  1b329600  slli r4, r12, 9
001118  9bc27201  srli r5, r5, 23
00111c  1b437601  srli r6, r12, 23
001120  93810100  seteq r3, r3, zero
001124  13020200  seteq r4, r4, zero
001128  9b82f20f  andi r5, r5, 255
00112c  1b03f30f  andi r6, r6, 255
001130  9bf2f20f  setlti r5, r5, 255
001134  1b73f30f  setlti r6, r6, 255
001138  97913200  or r3, r5, r3
00113c  17124300  or r4, r6, r4
001140  97013200  and r3, r4, r3
001144  b7e0010c  beq r3, zero, 6200
001148  bb70060c  bneq r12, zero, 6204
00114c  63436ffe  loadli.w r6,  -204(r30)
001150  37200300  beq r6, zero, 8
001154  1f030600  addli r6, r12, 0
001158  93611006  setle.f r3, zero, r1
00115c  13e20006  setle.f r4, r1, zero
001160  97013200  and r3, r4, r3
001164  3ba00100  bneq r3, zero, 8
001168  1f830000  addli r6, r1, 0
00116c  93e16604  setlt.f r3, r13, r6
001170  9f000300  addli r1, r6, 0
001174  3ba00100  bneq r3, zero, 8
001178  9f800600  addli r1, r13, 0
00117c  9bb19600  slli r3, r13, 9
001180  1b329300  slli r4, r6, 9
001184  9bc27601  srli r5, r13, 23
001188  1f060300  addli r12, r6, 0
00118c  1b437301  srli r6, r6, 23
001190  93810100  seteq r3, r3, zero
001194  13020200  seteq r4, r4, zero
001198  9b82f20f  andi r5, r5, 255
00119c  1b03f30f  andi r6, r6, 255
0011a0  9bf2f20f  setlti r5, r5, 255
0011a4  1b73f30f  setlti r6, r6, 255
0011a8  97913200  or r3, r5, r3
0011ac  17124300  or r4, r6, r4
0011b0  97013200  and r3, r4, r3
0011b4  b78f010a  beq r3, zero, 6112
0011b8  e3027ffe  loadli.w r5,  -200(r30)
0011bc  bb1f060a  bneq r12, zero, 6116
0011c0  37a00600  beq r13, zero, 8
0011c4  9f060600  addli r13, r12, 0
0011c8  93611006  setle.f r3, zero, r1
0011cc  13e20006  setle.f r4, r1, zero
0011d0  97013200  and r3, r4, r3
0011d4  3ba00100  bneq r3, zero, 8
0011d8  9f860000  addli r13, r1, 0
0011dc  93e1d204  setlt.f r3, r5, r13
0011e0  9f800600  addli r1, r13, 0
0011e4  3ba00100  bneq r3, zero, 8
0011e8  9f800200  addli r1, r5, 0
0011ec  9bb19200  slli r3, r5, 9
0011f0  1bb29600  slli r4, r13, 9
0011f4  9bc27201  srli r5, r5, 23
0011f8  1bc37601  srli r6, r13, 23
0011fc  93810100  seteq r3, r3, zero
001200  13020200  seteq r4, r4, zero
001204  9b82f20f  andi r5, r5, 255
001208  1b03f30f  andi r6, r6, 255
00120c  9bf2f20f  setlti r5, r5, 255
001210  1b73f30f  setlti r6, r6, 255
001214  97913200  or r3, r5, r3
001218  17124300  or r4, r6, r4
00121c  97013200  and r3, r4, r3
001220  37be010a  beq r3, zero, 6028
001224  3bce060a  bneq r13, zero, 6032
001228  63037ffe  loadli.w r6,  -200(r30)
00122c  37200300  beq r6, zero, 8
001230  1f830600  addli r6, r13, 0
001234  93611006  setle.f r3, zero, r1
001238  13e20006  setle.f r4, r1, zero
00123c  97013200  and r3, r4, r3
001240  3ba00100  bneq r3, zero, 8
001244  1f830000  addli r6, r1, 0
001248  93616d04  setlt.f r3, r26, r6
00124c  9f000300  addli r1, r6, 0
001250  3ba00100  bneq r3, zero, 8
001254  9f000d00  addli r1, r26, 0
001258  9b319d00  slli r3, r26, 9
00125c  1b329300  slli r4, r6, 9
001260  9b427d01  srli r5, r26, 23
001264  9f060300  addli r13, r6, 0
001268  1b437301  srli r6, r6, 23
00126c  93810100  seteq r3, r3, zero
001270  13020200  seteq r4, r4, zero
001274  9b82f20f  andi r5, r5, 255
001278  1b03f30f  andi r6, r6, 255
00127c  9bf2f20f  setlti r5, r5, 255
001280  1b73f30f  setlti r6, r6, 255
001284  97913200  or r3, r5, r3
001288  17124300  or r4, r6, r4
00128c  97013200  and r3, r4, r3
001290  b7dc010a  beq r3, zero, 5940
001294  e3427ffe  loadli.w r5,  -196(r30)
001298  bbec060a  bneq r13, zero, 5944
00129c  37200d00  beq r26, zero, 8
0012a0  1f8d0600  addli r26, r13, 0
0012a4  93611006  setle.f r3, zero, r1
0012a8  13e20006  setle.f r4, r1, zero
0012ac  97013200  and r3, r4, r3
0012b0  3ba00100  bneq r3, zero, 8
0012b4  1f8d0000  addli r26, r1, 0
0012b8  93e1a205  setlt.f r3, r5, r26
0012bc  9f000d00  addli r1, r26, 0
0012c0  3ba00100  bneq r3, zero, 8
0012c4  9f800200  addli r1, r5, 0
0012c8  9bb19200  slli r3, r5, 9
0012cc  1b329d00  slli r4, r26, 9
0012d0  9bc27201  srli r5, r5, 23
0012d4  1b437d01  srli r6, r26, 23
0012d8  93810100  seteq r3, r3, zero
0012dc  13020200  seteq r4, r4, zero
0012e0  9b82f20f  andi r5, r5, 255
0012e4  1b03f30f  andi r6, r6, 255
0012e8  9bf2f20f  setlti r5, r5, 255
0012ec  1b73f30f  setlti r6, r6, 255
0012f0  97913200  or r3, r5, r3
0012f4  17124300  or r4, r6, r4
0012f8  97013200  and r3, r4, r3
0012fc  b78b010a  beq r3, zero, 5856
001300  bb1b0d0a  bneq r26, zero, 5860
001304  63437ffe  loadli.w r6,  -196(r30)
001308  37200300  beq r6, zero, 8
00130c  1f030d00  addli r6, r26, 0
001310  93611006  setle.f r3, zero, r1
001314  13e20006  setle.f r4, r1, zero
001318  97013200  and r3, r4, r3
00131c  3ba00100  bneq r3, zero, 8
001320  1f830000  addli r6, r1, 0
001324  93e16a04  setlt.f r3, r21, r6
001328  9f000300  addli r1, r6, 0
00132c  3ba00100  bneq r3, zero, 8
001330  9f800a00  addli r1, r21, 0
001334  9bb19a00  slli r3, r21, 9
001338  1b329300  slli r4, r6, 9
00133c  9bc27a01  srli r5, r21, 23
001340  1f0d0300  addli r26, r6, 0
001344  1b437301  srli r6, r6, 23
001348  93810100  seteq r3, r3, zero
00134c  13020200  seteq r4, r4, zero
001350  9b82f20f  andi r5, r5, 255
001354  1b03f30f  andi r6, r6, 255
001358  9bf2f20f  setlti r5, r5, 255
00135c  1b73f30f  setlti r6, r6, 255
001360  97913200  or r3, r5, r3
001364  17124300  or r4, r6, r4
001368  97013200  and r3, r4, r3
00136c  37aa010a  beq r3, zero, 5768
001370  e3028ffe  loadli.w r5,  -192(r30)
001374  3b3a0d0a  bneq r26, zero, 5772
001378  37a00a00  beq r21, zero, 8
00137c  9f0a0d00  addli r21, r26, 0
001380  93611006  setle.f r3, zero, r1
001384  13e20006  setle.f r4, r1, zero
001388  97013200  and r3, r4, r3
00138c  3ba00100  bneq r3, zero, 8
001390  9f8a0000  addli r21, r1, 0
001394  93e15205  setlt.f r3, r5, r21
001398  9f800a00  addli r1, r21, 0
00139c  3ba00100  bneq r3, zero, 8
0013a0  9f800200  addli r1, r5, 0
0013a4  9bb19200  slli r3, r5, 9
0013a8  1bb29a00  slli r4, r21, 9
0013ac  9bc27201  srli r5, r5, 23
0013b0  1bc37a01  srli r6, r21, 23
0013b4  93810100  seteq r3, r3, zero
0013b8  13020200  seteq r4, r4, zero
0013bc  9b82f20f  andi r5, r5, 255
0013c0  1b03f30f  andi r6, r6, 255
0013c4  9bf2f20f  setlti r5, r5, 255
0013c8  1b73f30f  setlti r6, r6, 255
0013cc  97913200  or r3, r5, r3
0013d0  17124300  or r4, r6, r4
0013d4  97013200  and r3, r4, r3
0013d8  b7d8010a  beq r3, zero, 5684
0013dc  bbe80a0a  bneq r21, zero, 5688
0013e0  63038ffe  loadli.w r6,  -192(r30)
0013e4  37200300  beq r6, zero, 8
0013e8  1f830a00  addli r6, r21, 0
0013ec  93611006  setle.f r3, zero, r1
0013f0  13e20006  setle.f r4, r1, zero
0013f4  97013200  and r3, r4, r3
0013f8  3ba00100  bneq r3, zero, 8
0013fc  1f830000  addli r6, r1, 0
001400  93e16904  setlt.f r3, r19, r6
001404  9f000300  addli r1, r6, 0
001408  3ba00100  bneq r3, zero, 8
00140c  9f800900  addli r1, r19, 0
001410  9bb19900  slli r3, r19, 9
001414  1b329300  slli r4, r6, 9
001418  9bc27901  srli r5, r19, 23
00141c  9f0a0300  addli r21, r6, 0
001420  1b437301  srli r6, r6, 23
001424  93810100  seteq r3, r3, zero
001428  13020200  seteq r4, r4, zero
00142c  9b82f20f  andi r5, r5, 255
001430  1b03f30f  andi r6, r6, 255
001434  9bf2f20f  setlti r5, r5, 255
001438  1b73f30f  setlti r6, r6, 255
00143c  97913200  or r3, r5, r3
001440  17124300  or r4, r6, r4
001444  97013200  and r3, r4, r3
001448  37f7010a  beq r3, zero, 5596
00144c  bb870a0a  bneq r21, zero, 5600
001450  37a00900  beq r19, zero, 8
001454  9f890a00  addli r19, r21, 0
001458  93611006  setle.f r3, zero, r1
00145c  13e20006  setle.f r4, r1, zero
001460  97013200  and r3, r4, r3
001464  3ba00100  bneq r3, zero, 8
001468  9f890000  addli r19, r1, 0
00146c  93613a05  setlt.f r3, r20, r19
001470  9f800900  addli r1, r19, 0
001474  3ba00100  bneq r3, zero, 8
001478  9f000a00  addli r1, r20, 0
00147c  9b319a00  slli r3, r20, 9
001480  1bb29900  slli r4, r19, 9
001484  9b427a01  srli r5, r20, 23
001488  1bc37901  srli r6, r19, 23
00148c  93810100  seteq r3, r3, zero
001490  13020200  seteq r4, r4, zero
001494  9b82f20f  andi r5, r5, 255
001498  1b03f30f  andi r6, r6, 255
00149c  9bf2f20f  setlti r5, r5, 255
0014a0  1b73f30f  setlti r6, r6, 255
0014a4  97913200  or r3, r5, r3
0014a8  17124300  or r4, r6, r4
0014ac  97013200  and r3, r4, r3
0014b0  37a6010a  beq r3, zero, 5512
0014b4  e3428ffe  loadli.w r5,  -188(r30)
0014b8  3bb6090a  bneq r19, zero, 5516
0014bc  37200a00  beq r20, zero, 8
0014c0  1f8a0900  addli r20, r19, 0
0014c4  93611006  setle.f r3, zero, r1
0014c8  13e20006  setle.f r4, r1, zero
0014cc  97013200  and r3, r4, r3
0014d0  3ba00100  bneq r3, zero, 8
0014d4  1f8a0000  addli r20, r1, 0
0014d8  93e14205  setlt.f r3, r5, r20
0014dc  9f000a00  addli r1, r20, 0
0014e0  3ba00100  bneq r3, zero, 8
0014e4  9f800200  addli r1, r5, 0
0014e8  9bb19200  slli r3, r5, 9
0014ec  1b329a00  slli r4, r20, 9
0014f0  9bc27201  srli r5, r5, 23
0014f4  1b437a01  srli r6, r20, 23
0014f8  9f090a00  addli r19, r20, 0
0014fc  93810100  seteq r3, r3, zero
001500  13020200  seteq r4, r4, zero
001504  9b82f20f  andi r5, r5, 255
001508  1b03f30f  andi r6, r6, 255
00150c  9bf2f20f  setlti r5, r5, 255
001510  1b73f30f  setlti r6, r6, 255
001514  97913200  or r3, r5, r3
001518  17124300  or r4, r6, r4
00151c  97013200  and r3, r4, r3
001520  3ba00100  bneq r3, zero, 8
001524  ab00c07f  lui r1, 523264
001528  634a5ffd  loadli.w r20,  -340(r30)
00152c  37a00900  beq r19, zero, 8
001530  9f890000  addli r19, r1, 0
001534  63066ffd  loadli.w r12,  -336(r30)
001538  63438ffe  loadli.w r6,  -188(r30)
00153c  37200300  beq r6, zero, 8
001540  1f830900  addli r6, r19, 0
001544  93611006  setle.f r3, zero, r1
001548  13e20006  setle.f r4, r1, zero
00154c  e3055ffd  loadli.w r11,  -344(r30)
001550  97013200  and r3, r4, r3
001554  3ba00100  bneq r3, zero, 8
001558  1f830000  addli r6, r1, 0
00155c  93e16404  setlt.f r3, r9, r6
001560  e3464ffd  loadli.w r13,  -348(r30)
001564  e3091ffd  loadli.w r19,  -376(r30)
001568  9f000300  addli r1, r6, 0
00156c  3ba00100  bneq r3, zero, 8
001570  9f800400  addli r1, r9, 0
001574  9bb19400  slli r3, r9, 9
001578  1b329300  slli r4, r6, 9
00157c  9bc27401  srli r5, r9, 23
001580  9f0a0300  addli r21, r6, 0
001584  1b437301  srli r6, r6, 23
001588  93810100  seteq r3, r3, zero
00158c  13020200  seteq r4, r4, zero
001590  9b82f20f  andi r5, r5, 255
001594  1b03f30f  andi r6, r6, 255
001598  9bf2f20f  setlti r5, r5, 255
00159c  1b73f30f  setlti r6, r6, 255
0015a0  97913200  or r3, r5, r3
0015a4  17124300  or r4, r6, r4
0015a8  97013200  and r3, r4, r3
0015ac  b792010a  beq r3, zero, 5284
0015b0  e3029ffe  loadli.w r5,  -184(r30)
0015b4  bba20a0a  bneq r21, zero, 5288
0015b8  37a00400  beq r9, zero, 8
0015bc  9f840a00  addli r9, r21, 0
0015c0  93611006  setle.f r3, zero, r1
0015c4  13e20006  setle.f r4, r1, zero
0015c8  97013200  and r3, r4, r3
0015cc  3ba00100  bneq r3, zero, 8
0015d0  9f840000  addli r9, r1, 0
0015d4  93e19204  setlt.f r3, r5, r9
0015d8  9f800400  addli r1, r9, 0
0015dc  9f8a0600  addli r21, r13, 0
0015e0  3ba00100  bneq r3, zero, 8
0015e4  9f800200  addli r1, r5, 0
0015e8  9bb19200  slli r3, r5, 9
0015ec  1bb29400  slli r4, r9, 9
0015f0  9bc27201  srli r5, r5, 23
0015f4  1bc37401  srli r6, r9, 23
0015f8  9f860500  addli r13, r11, 0
0015fc  93810100  seteq r3, r3, zero
001600  13020200  seteq r4, r4, zero
001604  9b82f20f  andi r5, r5, 255
001608  1b03f30f  andi r6, r6, 255
00160c  9bf2f20f  setlti r5, r5, 255
001610  1b73f30f  setlti r6, r6, 255
001614  97913200  or r3, r5, r3
001618  17124300  or r4, r6, r4
00161c  97013200  and r3, r4, r3
001620  3ba00100  bneq r3, zero, 8
001624  ab00c07f  lui r1, 523264
001628  9f050600  addli r11, r12, 0
00162c  37a00400  beq r9, zero, 8
001630  9f840000  addli r9, r1, 0
001634  63039ffe  loadli.w r6,  -184(r30)
001638  1f060a00  addli r12, r20, 0
00163c  37200300  beq r6, zero, 8
001640  1f830400  addli r6, r9, 0
001644  93611006  setle.f r3, zero, r1
001648  13e20006  setle.f r4, r1, zero
00164c  630a0ffd  loadli.w r20,  -384(r30)
001650  97013200  and r3, r4, r3
001654  3ba00100  bneq r3, zero, 8
001658  1f830000  addli r6, r1, 0
00165c  93616504  setlt.f r3, r10, r6
001660  9f000300  addli r1, r6, 0
001664  3ba00100  bneq r3, zero, 8
001668  9f000500  addli r1, r10, 0
00166c  9b319500  slli r3, r10, 9
001670  1b329300  slli r4, r6, 9
001674  9b427501  srli r5, r10, 23
001678  9f040300  addli r9, r6, 0
00167c  1b437301  srli r6, r6, 23
001680  93810100  seteq r3, r3, zero
001684  13020200  seteq r4, r4, zero
001688  9b82f20f  andi r5, r5, 255
00168c  1b03f30f  andi r6, r6, 255
001690  9bf2f20f  setlti r5, r5, 255
001694  1b73f30f  setlti r6, r6, 255
001698  97913200  or r3, r5, r3
00169c  17124300  or r4, r6, r4
0016a0  97013200  and r3, r4, r3
0016a4  379f0108  beq r3, zero, 5060
0016a8  e3429ffe  loadli.w r5,  -180(r30)
0016ac  3baf0408  bneq r9, zero, 5064
0016b0  37200500  beq r10, zero, 8
0016b4  1f850400  addli r10, r9, 0
0016b8  93611006  setle.f r3, zero, r1
0016bc  13e20006  setle.f r4, r1, zero
0016c0  97013200  and r3, r4, r3
0016c4  3ba00100  bneq r3, zero, 8
0016c8  1f850000  addli r10, r1, 0
0016cc  93e1a204  setlt.f r3, r5, r10
0016d0  9f000500  addli r1, r10, 0
0016d4  3ba00100  bneq r3, zero, 8
0016d8  9f800200  addli r1, r5, 0
0016dc  9bb19200  slli r3, r5, 9
0016e0  1b329500  slli r4, r10, 9
0016e4  9bc27201  srli r5, r5, 23
0016e8  1b437501  srli r6, r10, 23
0016ec  93810100  seteq r3, r3, zero
0016f0  13020200  seteq r4, r4, zero
0016f4  9b82f20f  andi r5, r5, 255
0016f8  1b03f30f  andi r6, r6, 255
0016fc  9bf2f20f  setlti r5, r5, 255
001700  1b73f30f  setlti r6, r6, 255
001704  97913200  or r3, r5, r3
001708  17124300  or r4, r6, r4
00170c  97013200  and r3, r4, r3
001710  b7cd0108  beq r3, zero, 4976
001714  bb5d0508  bneq r10, zero, 4980
001718  63439ffe  loadli.w r6,  -180(r30)
00171c  37200300  beq r6, zero, 8
001720  1f030500  addli r6, r10, 0
001724  93611006  setle.f r3, zero, r1
001728  13e20006  setle.f r4, r1, zero
00172c  97013200  and r3, r4, r3
001730  3ba00100  bneq r3, zero, 8
001734  1f830000  addli r6, r1, 0
001738  93e16c04  setlt.f r3, r25, r6
00173c  9f000300  addli r1, r6, 0
001740  3ba00100  bneq r3, zero, 8
001744  9f800c00  addli r1, r25, 0
001748  9bb19c00  slli r3, r25, 9
00174c  1b329300  slli r4, r6, 9
001750  9bc27c01  srli r5, r25, 23
001754  1f050300  addli r10, r6, 0
001758  1b437301  srli r6, r6, 23
00175c  93810100  seteq r3, r3, zero
001760  13020200  seteq r4, r4, zero
001764  9b82f20f  andi r5, r5, 255
001768  1b03f30f  andi r6, r6, 255
00176c  9bf2f20f  setlti r5, r5, 255
001770  1b73f30f  setlti r6, r6, 255
001774  97913200  or r3, r5, r3
001778  17124300  or r4, r6, r4
00177c  97013200  and r3, r4, r3
001780  37ec0108  beq r3, zero, 4888
001784  e302affe  loadli.w r5,  -176(r30)
001788  3b7c0508  bneq r10, zero, 4892
00178c  37a00c00  beq r25, zero, 8
001790  9f0c0500  addli r25, r10, 0
001794  93611006  setle.f r3, zero, r1
001798  13e20006  setle.f r4, r1, zero
00179c  97013200  and r3, r4, r3
0017a0  3ba00100  bneq r3, zero, 8
0017a4  9f8c0000  addli r25, r1, 0
0017a8  93e19205  setlt.f r3, r5, r25
0017ac  9f800c00  addli r1, r25, 0
0017b0  3ba00100  bneq r3, zero, 8
0017b4  9f800200  addli r1, r5, 0
0017b8  9bb19200  slli r3, r5, 9
0017bc  1bb29c00  slli r4, r25, 9
0017c0  9bc27201  srli r5, r5, 23
0017c4  1bc37c01  srli r6, r25, 23
0017c8  93810100  seteq r3, r3, zero
0017cc  13020200  seteq r4, r4, zero
0017d0  9b82f20f  andi r5, r5, 255
0017d4  1b03f30f  andi r6, r6, 255
0017d8  9bf2f20f  setlti r5, r5, 255
0017dc  1b73f30f  setlti r6, r6, 255
0017e0  97913200  or r3, r5, r3
0017e4  17124300  or r4, r6, r4
0017e8  97013200  and r3, r4, r3
0017ec  3ba00100  bneq r3, zero, 8
0017f0  ab00c07f  lui r1, 523264
0017f4  37a00c00  beq r25, zero, 8
0017f8  9f8c0000  addli r25, r1, 0
0017fc  9f810c00  addli r3, r25, 0
001800  e30ceffc  loadli.w r25,  -400(r30)
001804  6303affe  loadli.w r6,  -176(r30)
001808  37200300  beq r6, zero, 8
00180c  1f830100  addli r6, r3, 0
001810  93611006  setle.f r3, zero, r1
001814  13e20006  setle.f r4, r1, zero
001818  634d6ffd  loadli.w r26,  -332(r30)
00181c  97013200  and r3, r4, r3
001820  3ba00100  bneq r3, zero, 8
001824  1f830000  addli r6, r1, 0
001828  93616404  setlt.f r3, r8, r6
00182c  63057ffd  loadli.w r10,  -328(r30)
001830  9f000300  addli r1, r6, 0
001834  3ba00100  bneq r3, zero, 8
001838  9f000400  addli r1, r8, 0
00183c  9b319400  slli r3, r8, 9
001840  1b329300  slli r4, r6, 9
001844  9b427401  srli r5, r8, 23
001848  9f040300  addli r9, r6, 0
00184c  1b437301  srli r6, r6, 23
001850  93810100  seteq r3, r3, zero
001854  13020200  seteq r4, r4, zero
001858  9b82f20f  andi r5, r5, 255
00185c  1b03f30f  andi r6, r6, 255
001860  9bf2f20f  setlti r5, r5, 255
001864  1b73f30f  setlti r6, r6, 255
001868  97913200  or r3, r5, r3
00186c  17124300  or r4, r6, r4
001870  97013200  and r3, r4, r3
001874  b7f80108  beq r3, zero, 4668
001878  e342affe  loadli.w r5,  -172(r30)
00187c  3b890408  bneq r9, zero, 4672
001880  37200400  beq r8, zero, 8
001884  1f840400  addli r8, r9, 0
001888  93611006  setle.f r3, zero, r1
00188c  13e20006  setle.f r4, r1, zero
001890  97013200  and r3, r4, r3
001894  3ba00100  bneq r3, zero, 8
001898  1f840000  addli r8, r1, 0
00189c  93e18204  setlt.f r3, r5, r8
0018a0  9f000400  addli r1, r8, 0
0018a4  9f040500  addli r9, r10, 0
0018a8  3ba00100  bneq r3, zero, 8
0018ac  9f800200  addli r1, r5, 0
0018b0  9bb19200  slli r3, r5, 9
0018b4  1b329400  slli r4, r8, 9
0018b8  9bc27201  srli r5, r5, 23
0018bc  1b437401  srli r6, r8, 23
0018c0  1f050d00  addli r10, r26, 0
0018c4  93810100  seteq r3, r3, zero
0018c8  13020200  seteq r4, r4, zero
0018cc  9b82f20f  andi r5, r5, 255
0018d0  1b03f30f  andi r6, r6, 255
0018d4  9bf2f20f  setlti r5, r5, 255
0018d8  1b73f30f  setlti r6, r6, 255
0018dc  97913200  or r3, r5, r3
0018e0  17124300  or r4, r6, r4
0018e4  97013200  and r3, r4, r3
0018e8  b7870108  beq r3, zero, 4576
0018ec  1f8d0c00  addli r26, r25, 0
0018f0  bb170408  bneq r8, zero, 4580
0018f4  6343affe  loadli.w r6,  -172(r30)
0018f8  37200300  beq r6, zero, 8
0018fc  1f030400  addli r6, r8, 0
001900  93611006  setle.f r3, zero, r1
001904  13e20006  setle.f r4, r1, zero
001908  97013200  and r3, r4, r3
00190c  3ba00100  bneq r3, zero, 8
001910  1f830000  addli r6, r1, 0
001914  93616a04  setlt.f r3, r20, r6
001918  9f000300  addli r1, r6, 0
00191c  3ba00100  bneq r3, zero, 8
001920  9f000a00  addli r1, r20, 0
001924  9b319a00  slli r3, r20, 9
001928  1b329300  slli r4, r6, 9
00192c  9b427a01  srli r5, r20, 23
001930  1f040300  addli r8, r6, 0
001934  1b437301  srli r6, r6, 23
001938  93810100  seteq r3, r3, zero
00193c  13020200  seteq r4, r4, zero
001940  9b82f20f  andi r5, r5, 255
001944  1b03f30f  andi r6, r6, 255
001948  9bf2f20f  setlti r5, r5, 255
00194c  1b73f30f  setlti r6, r6, 255
001950  97913200  or r3, r5, r3
001954  17124300  or r4, r6, r4
001958  97013200  and r3, r4, r3
00195c  37a60108  beq r3, zero, 4488
001960  e302bffe  loadli.w r5,  -168(r30)
001964  3b360408  bneq r8, zero, 4492
001968  37200a00  beq r20, zero, 8
00196c  1f0a0400  addli r20, r8, 0
001970  93611006  setle.f r3, zero, r1
001974  13e20006  setle.f r4, r1, zero
001978  97013200  and r3, r4, r3
00197c  3ba00100  bneq r3, zero, 8
001980  1f8a0000  addli r20, r1, 0
001984  93e14205  setlt.f r3, r5, r20
001988  6304fffc  loadli.w r8,  -392(r30)
00198c  9f000a00  addli r1, r20, 0
001990  3ba00100  bneq r3, zero, 8
001994  9f800200  addli r1, r5, 0
001998  9bb19200  slli r3, r5, 9
00199c  1b329a00  slli r4, r20, 9
0019a0  9bc27201  srli r5, r5, 23
0019a4  1b437a01  srli r6, r20, 23
0019a8  93810100  seteq r3, r3, zero
0019ac  13020200  seteq r4, r4, zero
0019b0  9b82f20f  andi r5, r5, 255
0019b4  1b03f30f  andi r6, r6, 255
0019b8  9bf2f20f  setlti r5, r5, 255
0019bc  1b73f30f  setlti r6, r6, 255
0019c0  97913200  or r3, r5, r3
0019c4  17124300  or r4, r6, r4
0019c8  97013200  and r3, r4, r3
0019cc  b7c40108  beq r3, zero, 4400
0019d0  bb540a08  bneq r20, zero, 4404
0019d4  6303bffe  loadli.w r6,  -168(r30)
0019d8  37200300  beq r6, zero, 8
0019dc  1f030a00  addli r6, r20, 0
0019e0  93611006  setle.f r3, zero, r1
0019e4  13e20006  setle.f r4, r1, zero
0019e8  97013200  and r3, r4, r3
0019ec  3ba00100  bneq r3, zero, 8
0019f0  1f830000  addli r6, r1, 0
0019f4  93616704  setlt.f r3, r14, r6
0019f8  9f000300  addli r1, r6, 0
0019fc  3ba00100  bneq r3, zero, 8
001a00  9f000700  addli r1, r14, 0
001a04  9b319700  slli r3, r14, 9
001a08  1b329300  slli r4, r6, 9
001a0c  9b427701  srli r5, r14, 23
001a10  1f0e0300  addli r28, r6, 0
001a14  1b437301  srli r6, r6, 23
001a18  93810100  seteq r3, r3, zero
001a1c  13020200  seteq r4, r4, zero
001a20  9b82f20f  andi r5, r5, 255
001a24  1b03f30f  andi r6, r6, 255
001a28  9bf2f20f  setlti r5, r5, 255
001a2c  1b73f30f  setlti r6, r6, 255
001a30  97913200  or r3, r5, r3
001a34  17124300  or r4, r6, r4
001a38  97013200  and r3, r4, r3
001a3c  37e30108  beq r3, zero, 4312
001a40  e342bffe  loadli.w r5,  -164(r30)
001a44  3b730e08  bneq r28, zero, 4316
001a48  37200700  beq r14, zero, 8
001a4c  1f070e00  addli r14, r28, 0
001a50  93611006  setle.f r3, zero, r1
001a54  13e20006  setle.f r4, r1, zero
001a58  97013200  and r3, r4, r3
001a5c  3ba00100  bneq r3, zero, 8
001a60  1f870000  addli r14, r1, 0
001a64  93e1e204  setlt.f r3, r5, r14
001a68  9f000700  addli r1, r14, 0
001a6c  3ba00100  bneq r3, zero, 8
001a70  9f800200  addli r1, r5, 0
001a74  9bb19200  slli r3, r5, 9
001a78  1b329700  slli r4, r14, 9
001a7c  9bc27201  srli r5, r5, 23
001a80  1b437701  srli r6, r14, 23
001a84  93810100  seteq r3, r3, zero
001a88  13020200  seteq r4, r4, zero
001a8c  9b82f20f  andi r5, r5, 255
001a90  1b03f30f  andi r6, r6, 255
001a94  9bf2f20f  setlti r5, r5, 255
001a98  1b73f30f  setlti r6, r6, 255
001a9c  97913200  or r3, r5, r3
001aa0  17124300  or r4, r6, r4
001aa4  97013200  and r3, r4, r3
001aa8  37920108  beq r3, zero, 4228
001aac  3b220708  bneq r14, zero, 4232
001ab0  6343bffe  loadli.w r6,  -164(r30)
001ab4  37200300  beq r6, zero, 8
001ab8  1f030700  addli r6, r14, 0
001abc  93611006  setle.f r3, zero, r1
001ac0  13e20006  setle.f r4, r1, zero
001ac4  97013200  and r3, r4, r3
001ac8  3ba00100  bneq r3, zero, 8
001acc  1f830000  addli r6, r1, 0
001ad0  93e16904  setlt.f r3, r19, r6
001ad4  9f000300  addli r1, r6, 0
001ad8  3ba00100  bneq r3, zero, 8
001adc  9f800900  addli r1, r19, 0
001ae0  9bb19900  slli r3, r19, 9
001ae4  1b329300  slli r4, r6, 9
001ae8  9bc27901  srli r5, r19, 23
001aec  1f070300  addli r14, r6, 0
001af0  1b437301  srli r6, r6, 23
001af4  93810100  seteq r3, r3, zero
001af8  13020200  seteq r4, r4, zero
001afc  9b82f20f  andi r5, r5, 255
001b00  1b03f30f  andi r6, r6, 255
001b04  9bf2f20f  setlti r5, r5, 255
001b08  1b73f30f  setlti r6, r6, 255
001b0c  97913200  or r3, r5, r3
001b10  17124300  or r4, r6, r4
001b14  97013200  and r3, r4, r3
001b18  b7b00108  beq r3, zero, 4140
001b1c  e342cffe  loadli.w r5,  -156(r30)
001b20  bb400708  bneq r14, zero, 4144
001b24  37a00900  beq r19, zero, 8
001b28  9f090700  addli r19, r14, 0
001b2c  93611006  setle.f r3, zero, r1
001b30  13e20006  setle.f r4, r1, zero
001b34  97013200  and r3, r4, r3
001b38  3ba00100  bneq r3, zero, 8
001b3c  9f890000  addli r19, r1, 0
001b40  93e13205  setlt.f r3, r5, r19
001b44  63471ffd  loadli.w r14,  -372(r30)
001b48  9f800900  addli r1, r19, 0
001b4c  3ba00100  bneq r3, zero, 8
001b50  9f800200  addli r1, r5, 0
001b54  9bb19200  slli r3, r5, 9
001b58  1bb29900  slli r4, r19, 9
001b5c  9bc27201  srli r5, r5, 23
001b60  1bc37901  srli r6, r19, 23
001b64  93810100  seteq r3, r3, zero
001b68  13020200  seteq r4, r4, zero
001b6c  9b82f20f  andi r5, r5, 255
001b70  1b03f30f  andi r6, r6, 255
001b74  9bf2f20f  setlti r5, r5, 255
001b78  1b73f30f  setlti r6, r6, 255
001b7c  97913200  or r3, r5, r3
001b80  17124300  or r4, r6, r4
001b84  97013200  and r3, r4, r3
001b88  37df0106  beq r3, zero, 4052
001b8c  3bef0906  bneq r19, zero, 4056
001b90  6343cffe  loadli.w r6,  -156(r30)
001b94  37200300  beq r6, zero, 8
001b98  1f830900  addli r6, r19, 0
001b9c  93611006  setle.f r3, zero, r1
001ba0  13e20006  setle.f r4, r1, zero
001ba4  97013200  and r3, r4, r3
001ba8  3ba00100  bneq r3, zero, 8
001bac  1f830000  addli r6, r1, 0
001bb0  93616704  setlt.f r3, r14, r6
001bb4  9f000300  addli r1, r6, 0
001bb8  3ba00100  bneq r3, zero, 8
001bbc  9f000700  addli r1, r14, 0
001bc0  9b319700  slli r3, r14, 9
001bc4  1b329300  slli r4, r6, 9
001bc8  9b427701  srli r5, r14, 23
001bcc  1f0a0300  addli r20, r6, 0
001bd0  1b437301  srli r6, r6, 23
001bd4  93810100  seteq r3, r3, zero
001bd8  13020200  seteq r4, r4, zero
001bdc  9b82f20f  andi r5, r5, 255
001be0  1b03f30f  andi r6, r6, 255
001be4  9bf2f20f  setlti r5, r5, 255
001be8  1b73f30f  setlti r6, r6, 255
001bec  97913200  or r3, r5, r3
001bf0  17124300  or r4, r6, r4
001bf4  97013200  and r3, r4, r3
001bf8  b7fd0106  beq r3, zero, 3964
001bfc  3b0e0a06  bneq r20, zero, 3968
001c00  37200700  beq r14, zero, 8
001c04  1f070a00  addli r14, r20, 0
001c08  93611006  setle.f r3, zero, r1
001c0c  13e20006  setle.f r4, r1, zero
001c10  97013200  and r3, r4, r3
001c14  3ba00100  bneq r3, zero, 8
001c18  1f870000  addli r14, r1, 0
001c1c  9361e404  setlt.f r3, r8, r14
001c20  9f000700  addli r1, r14, 0
001c24  3ba00100  bneq r3, zero, 8
001c28  9f000400  addli r1, r8, 0
001c2c  9b319400  slli r3, r8, 9
001c30  1b329700  slli r4, r14, 9
001c34  9b427401  srli r5, r8, 23
001c38  1b437701  srli r6, r14, 23
001c3c  93810100  seteq r3, r3, zero
001c40  13020200  seteq r4, r4, zero
001c44  9b82f20f  andi r5, r5, 255
001c48  1b03f30f  andi r6, r6, 255
001c4c  9bf2f20f  setlti r5, r5, 255
001c50  1b73f30f  setlti r6, r6, 255
001c54  97913200  or r3, r5, r3
001c58  17124300  or r4, r6, r4
001c5c  97013200  and r3, r4, r3
001c60  b7ac0106  beq r3, zero, 3880
001c64  e302dffe  loadli.w r5,  -152(r30)
001c68  bb3c0706  bneq r14, zero, 3884
001c6c  37200400  beq r8, zero, 8
001c70  1f040700  addli r8, r14, 0
001c74  93611006  setle.f r3, zero, r1
001c78  13e20006  setle.f r4, r1, zero
001c7c  97013200  and r3, r4, r3
001c80  3ba00100  bneq r3, zero, 8
001c84  1f840000  addli r8, r1, 0
001c88  93e18204  setlt.f r3, r5, r8
001c8c  e3092ffd  loadli.w r19,  -368(r30)
001c90  9f000400  addli r1, r8, 0
001c94  3ba00100  bneq r3, zero, 8
001c98  9f800200  addli r1, r5, 0
001c9c  9bb19200  slli r3, r5, 9
001ca0  1b329400  slli r4, r8, 9
001ca4  9bc27201  srli r5, r5, 23
001ca8  1b437401  srli r6, r8, 23
001cac  1f0a0400  addli r20, r8, 0
001cb0  93810100  seteq r3, r3, zero
001cb4  13020200  seteq r4, r4, zero
001cb8  9b82f20f  andi r5, r5, 255
001cbc  1b03f30f  andi r6, r6, 255
001cc0  9bf2f20f  setlti r5, r5, 255
001cc4  1b73f30f  setlti r6, r6, 255
001cc8  97913200  or r3, r5, r3
001ccc  17124300  or r4, r6, r4
001cd0  97013200  and r3, r4, r3
001cd4  3ba00100  bneq r3, zero, 8
001cd8  ab00c07f  lui r1, 523264
001cdc  e30ccffe  loadli.w r25,  -160(r30)
001ce0  37200a00  beq r20, zero, 8
001ce4  1f8a0000  addli r20, r1, 0
001ce8  634e7ffd  loadli.w r28,  -324(r30)
001cec  6303dffe  loadli.w r6,  -152(r30)
001cf0  37200300  beq r6, zero, 8
001cf4  1f030a00  addli r6, r20, 0
001cf8  93611006  setle.f r3, zero, r1
001cfc  13e20006  setle.f r4, r1, zero
001d00  63448ffd  loadli.w r8,  -316(r30)
001d04  97013200  and r3, r4, r3
001d08  3ba00100  bneq r3, zero, 8
001d0c  1f830000  addli r6, r1, 0
001d10  93e16d04  setlt.f r3, r27, r6
001d14  63078ffd  loadli.w r14,  -320(r30)
001d18  9f000300  addli r1, r6, 0
001d1c  1f8a0900  addli r20, r19, 0
001d20  3ba00100  bneq r3, zero, 8
001d24  9f800d00  addli r1, r27, 0
001d28  9bb19d00  slli r3, r27, 9
001d2c  1b329300  slli r4, r6, 9
001d30  9bc27d01  srli r5, r27, 23
001d34  9f090300  addli r19, r6, 0
001d38  1b437301  srli r6, r6, 23
001d3c  93810100  seteq r3, r3, zero
001d40  13020200  seteq r4, r4, zero
001d44  9b82f20f  andi r5, r5, 255
001d48  1b03f30f  andi r6, r6, 255
001d4c  9bf2f20f  setlti r5, r5, 255
001d50  1b73f30f  setlti r6, r6, 255
001d54  97913200  or r3, r5, r3
001d58  17124300  or r4, r6, r4
001d5c  97013200  and r3, r4, r3
001d60  37890106  beq r3, zero, 3648
001d64  3b990906  bneq r19, zero, 3652
001d68  37a00d00  beq r27, zero, 8
001d6c  9f8d0900  addli r27, r19, 0
001d70  93611006  setle.f r3, zero, r1
001d74  13e20006  setle.f r4, r1, zero
001d78  97013200  and r3, r4, r3
001d7c  3ba00100  bneq r3, zero, 8
001d80  9f8d0000  addli r27, r1, 0
001d84  9361bd05  setlt.f r3, r26, r27
001d88  9f800d00  addli r1, r27, 0
001d8c  9f090700  addli r19, r14, 0
001d90  3ba00100  bneq r3, zero, 8
001d94  9f000d00  addli r1, r26, 0
001d98  9b319d00  slli r3, r26, 9
001d9c  1bb29d00  slli r4, r27, 9
001da0  9b427d01  srli r5, r26, 23
001da4  1bc37d01  srli r6, r27, 23
001da8  1f070400  addli r14, r8, 0
001dac  93810100  seteq r3, r3, zero
001db0  13020200  seteq r4, r4, zero
001db4  9b82f20f  andi r5, r5, 255
001db8  1b03f30f  andi r6, r6, 255
001dbc  9bf2f20f  setlti r5, r5, 255
001dc0  1b73f30f  setlti r6, r6, 255
001dc4  97913200  or r3, r5, r3
001dc8  17124300  or r4, r6, r4
001dcc  97013200  and r3, r4, r3
001dd0  b7970106  beq r3, zero, 3556
001dd4  1f040e00  addli r8, r28, 0
001dd8  bba70d06  bneq r27, zero, 3560
001ddc  1f8e0c00  addli r28, r25, 0
001de0  37200d00  beq r26, zero, 8
001de4  1f8d0d00  addli r26, r27, 0
001de8  93611006  setle.f r3, zero, r1
001dec  13e20006  setle.f r4, r1, zero
001df0  97013200  and r3, r4, r3
001df4  3ba00100  bneq r3, zero, 8
001df8  1f8d0000  addli r26, r1, 0
001dfc  9361aa05  setlt.f r3, r20, r26
001e00  9f000d00  addli r1, r26, 0
001e04  3ba00100  bneq r3, zero, 8
001e08  9f000a00  addli r1, r20, 0
001e0c  9b319a00  slli r3, r20, 9
001e10  1b329d00  slli r4, r26, 9
001e14  9b427a01  srli r5, r20, 23
001e18  1b437d01  srli r6, r26, 23
001e1c  93810100  seteq r3, r3, zero
001e20  13020200  seteq r4, r4, zero
001e24  9b82f20f  andi r5, r5, 255
001e28  1b03f30f  andi r6, r6, 255
001e2c  9bf2f20f  setlti r5, r5, 255
001e30  1b73f30f  setlti r6, r6, 255
001e34  97913200  or r3, r5, r3
001e38  17124300  or r4, r6, r4
001e3c  97013200  and r3, r4, r3
001e40  37c60106  beq r3, zero, 3472
001e44  3b560d06  bneq r26, zero, 3476
001e48  37200a00  beq r20, zero, 8
001e4c  1f0a0d00  addli r20, r26, 0
001e50  93611006  setle.f r3, zero, r1
001e54  13e20006  setle.f r4, r1, zero
001e58  97013200  and r3, r4, r3
001e5c  3ba00100  bneq r3, zero, 8
001e60  1f8a0000  addli r20, r1, 0
001e64  93614b05  setlt.f r3, r22, r20
001e68  9f000a00  addli r1, r20, 0
001e6c  3ba00100  bneq r3, zero, 8
001e70  9f000b00  addli r1, r22, 0
001e74  9b319b00  slli r3, r22, 9
001e78  1b329a00  slli r4, r20, 9
001e7c  9b427b01  srli r5, r22, 23
001e80  1b437a01  srli r6, r20, 23
001e84  93810100  seteq r3, r3, zero
001e88  13020200  seteq r4, r4, zero
001e8c  9b82f20f  andi r5, r5, 255
001e90  1b03f30f  andi r6, r6, 255
001e94  9bf2f20f  setlti r5, r5, 255
001e98  1b73f30f  setlti r6, r6, 255
001e9c  97913200  or r3, r5, r3
001ea0  17124300  or r4, r6, r4
001ea4  97013200  and r3, r4, r3
001ea8  b7f40106  beq r3, zero, 3388
001eac  3b050a06  bneq r20, zero, 3392
001eb0  37200b00  beq r22, zero, 8
001eb4  1f0b0a00  addli r22, r20, 0
001eb8  93611006  setle.f r3, zero, r1
001ebc  13e20006  setle.f r4, r1, zero
001ec0  97013200  and r3, r4, r3
001ec4  3ba00100  bneq r3, zero, 8
001ec8  1f8b0000  addli r22, r1, 0
001ecc  93e16a05  setlt.f r3, r21, r22
001ed0  634a2ffd  loadli.w r20,  -364(r30)
001ed4  9f000b00  addli r1, r22, 0
001ed8  3ba00100  bneq r3, zero, 8
001edc  9f800a00  addli r1, r21, 0
001ee0  9bb19a00  slli r3, r21, 9
001ee4  1b329b00  slli r4, r22, 9
001ee8  9bc27a01  srli r5, r21, 23
001eec  1b437b01  srli r6, r22, 23
001ef0  93810100  seteq r3, r3, zero
001ef4  13020200  seteq r4, r4, zero
001ef8  9b82f20f  andi r5, r5, 255
001efc  1b03f30f  andi r6, r6, 255
001f00  9bf2f20f  setlti r5, r5, 255
001f04  1b73f30f  setlti r6, r6, 255
001f08  97913200  or r3, r5, r3
001f0c  17124300  or r4, r6, r4
001f10  97013200  and r3, r4, r3
001f14  b7930106  beq r3, zero, 3300
001f18  bb230b06  bneq r22, zero, 3304
001f1c  37a00a00  beq r21, zero, 8
001f20  9f0a0b00  addli r21, r22, 0
001f24  93611006  setle.f r3, zero, r1
001f28  13e20006  setle.f r4, r1, zero
001f2c  97013200  and r3, r4, r3
001f30  3ba00100  bneq r3, zero, 8
001f34  9f8a0000  addli r21, r1, 0
001f38  93615a05  setlt.f r3, r20, r21
001f3c  9f800a00  addli r1, r21, 0
001f40  3ba00100  bneq r3, zero, 8
001f44  9f000a00  addli r1, r20, 0
001f48  9b319a00  slli r3, r20, 9
001f4c  1bb29a00  slli r4, r21, 9
001f50  9b427a01  srli r5, r20, 23
001f54  1bc37a01  srli r6, r21, 23
001f58  93810100  seteq r3, r3, zero
001f5c  13020200  seteq r4, r4, zero
001f60  9b82f20f  andi r5, r5, 255
001f64  1b03f30f  andi r6, r6, 255
001f68  9bf2f20f  setlti r5, r5, 255
001f6c  1b73f30f  setlti r6, r6, 255
001f70  97913200  or r3, r5, r3
001f74  17124300  or r4, r6, r4
001f78  97013200  and r3, r4, r3
001f7c  37c20106  beq r3, zero, 3216
001f80  3bd20a06  bneq r21, zero, 3220
001f84  37200a00  beq r20, zero, 8
001f88  1f8a0a00  addli r20, r21, 0
001f8c  93611006  setle.f r3, zero, r1
001f90  13e20006  setle.f r4, r1, zero
001f94  97013200  and r3, r4, r3
001f98  3ba00100  bneq r3, zero, 8
001f9c  1f8a0000  addli r20, r1, 0
001fa0  93e14605  setlt.f r3, r13, r20
001fa4  9f000a00  addli r1, r20, 0
001fa8  3ba00100  bneq r3, zero, 8
001fac  9f800600  addli r1, r13, 0
001fb0  9bb19600  slli r3, r13, 9
001fb4  1b329a00  slli r4, r20, 9
001fb8  9bc27601  srli r5, r13, 23
001fbc  1b437a01  srli r6, r20, 23
001fc0  93810100  seteq r3, r3, zero
001fc4  13020200  seteq r4, r4, zero
001fc8  9b82f20f  andi r5, r5, 255
001fcc  1b03f30f  andi r6, r6, 255
001fd0  9bf2f20f  setlti r5, r5, 255
001fd4  1b73f30f  setlti r6, r6, 255
001fd8  97913200  or r3, r5, r3
001fdc  17124300  or r4, r6, r4
001fe0  97013200  and r3, r4, r3
001fe4  b7f00106  beq r3, zero, 3132
001fe8  3b010a06  bneq r20, zero, 3136
001fec  37a00600  beq r13, zero, 8
001ff0  9f060a00  addli r13, r20, 0
001ff4  93611006  setle.f r3, zero, r1
001ff8  13e20006  setle.f r4, r1, zero
001ffc  97013200  and r3, r4, r3
002000  3ba00100  bneq r3, zero, 8
002004  9f860000  addli r13, r1, 0
002008  9361d604  setlt.f r3, r12, r13
00200c  9f800600  addli r1, r13, 0
002010  3ba00100  bneq r3, zero, 8
002014  9f000600  addli r1, r12, 0
002018  9b319600  slli r3, r12, 9
00201c  1bb29600  slli r4, r13, 9
002020  9b427601  srli r5, r12, 23
002024  1bc37601  srli r6, r13, 23
002028  93810100  seteq r3, r3, zero
00202c  13020200  seteq r4, r4, zero
002030  9b82f20f  andi r5, r5, 255
002034  1b03f30f  andi r6, r6, 255
002038  9bf2f20f  setlti r5, r5, 255
00203c  1b73f30f  setlti r6, r6, 255
002040  97913200  or r3, r5, r3
002044  17124300  or r4, r6, r4
002048  97013200  and r3, r4, r3
00204c  b7af0104  beq r3, zero, 3048
002050  bbbf0604  bneq r13, zero, 3052
002054  37200600  beq r12, zero, 8
002058  1f860600  addli r12, r13, 0
00205c  93611006  setle.f r3, zero, r1
002060  13e20006  setle.f r4, r1, zero
002064  97013200  and r3, r4, r3
002068  3ba00100  bneq r3, zero, 8
00206c  1f860000  addli r12, r1, 0
002070  93e1c504  setlt.f r3, r11, r12
002074  9f000600  addli r1, r12, 0
002078  3ba00100  bneq r3, zero, 8
00207c  9f800500  addli r1, r11, 0
002080  9bb19500  slli r3, r11, 9
002084  1b329600  slli r4, r12, 9
002088  9bc27501  srli r5, r11, 23
00208c  1b437601  srli r6, r12, 23
002090  93810100  seteq r3, r3, zero
002094  13020200  seteq r4, r4, zero
002098  9b82f20f  andi r5, r5, 255
00209c  1b03f30f  andi r6, r6, 255
0020a0  9bf2f20f  setlti r5, r5, 255
0020a4  1b73f30f  setlti r6, r6, 255
0020a8  97913200  or r3, r5, r3
0020ac  17124300  or r4, r6, r4
0020b0  97013200  and r3, r4, r3
0020b4  37de0104  beq r3, zero, 2964
0020b8  3b6e0604  bneq r12, zero, 2968
0020bc  37a00500  beq r11, zero, 8
0020c0  9f050600  addli r11, r12, 0
0020c4  93611006  setle.f r3, zero, r1
0020c8  13e20006  setle.f r4, r1, zero
0020cc  97013200  and r3, r4, r3
0020d0  3ba00100  bneq r3, zero, 8
0020d4  9f850000  addli r11, r1, 0
0020d8  9361b504  setlt.f r3, r10, r11
0020dc  9f800500  addli r1, r11, 0
0020e0  3ba00100  bneq r3, zero, 8
0020e4  9f000500  addli r1, r10, 0
0020e8  9b319500  slli r3, r10, 9
0020ec  1bb29500  slli r4, r11, 9
0020f0  9b427501  srli r5, r10, 23
0020f4  1bc37501  srli r6, r11, 23
0020f8  93810100  seteq r3, r3, zero
0020fc  13020200  seteq r4, r4, zero
002100  9b82f20f  andi r5, r5, 255
002104  1b03f30f  andi r6, r6, 255
002108  9bf2f20f  setlti r5, r5, 255
00210c  1b73f30f  setlti r6, r6, 255
002110  97913200  or r3, r5, r3
002114  17124300  or r4, r6, r4
002118  97013200  and r3, r4, r3
00211c  378d0104  beq r3, zero, 2880
002120  3b9d0504  bneq r11, zero, 2884
002124  37200500  beq r10, zero, 8
002128  1f850500  addli r10, r11, 0
00212c  93611006  setle.f r3, zero, r1
002130  13e20006  setle.f r4, r1, zero
002134  97013200  and r3, r4, r3
002138  3ba00100  bneq r3, zero, 8
00213c  1f850000  addli r10, r1, 0
002140  93e1a404  setlt.f r3, r9, r10
002144  9f000500  addli r1, r10, 0
002148  3ba00100  bneq r3, zero, 8
00214c  9f800400  addli r1, r9, 0
002150  9bb19400  slli r3, r9, 9
002154  1b329500  slli r4, r10, 9
002158  9bc27401  srli r5, r9, 23
00215c  1b437501  srli r6, r10, 23
002160  93810100  seteq r3, r3, zero
002164  13020200  seteq r4, r4, zero
002168  9b82f20f  andi r5, r5, 255
00216c  1b03f30f  andi r6, r6, 255
002170  9bf2f20f  setlti r5, r5, 255
002174  1b73f30f  setlti r6, r6, 255
002178  97913200  or r3, r5, r3
00217c  17124300  or r4, r6, r4
002180  97013200  and r3, r4, r3
002184  b7bb0104  beq r3, zero, 2796
002188  bb4b0504  bneq r10, zero, 2800
00218c  37a00400  beq r9, zero, 8
002190  9f040500  addli r9, r10, 0
002194  93611006  setle.f r3, zero, r1
002198  13e20006  setle.f r4, r1, zero
00219c  97013200  and r3, r4, r3
0021a0  3ba00100  bneq r3, zero, 8
0021a4  9f840000  addli r9, r1, 0
0021a8  93619404  setlt.f r3, r8, r9
0021ac  9f800400  addli r1, r9, 0
0021b0  3ba00100  bneq r3, zero, 8
0021b4  9f000400  addli r1, r8, 0
0021b8  9b319400  slli r3, r8, 9
0021bc  1bb29400  slli r4, r9, 9
0021c0  9b427401  srli r5, r8, 23
0021c4  1bc37401  srli r6, r9, 23
0021c8  93810100  seteq r3, r3, zero
0021cc  13020200  seteq r4, r4, zero
0021d0  9b82f20f  andi r5, r5, 255
0021d4  1b03f30f  andi r6, r6, 255
0021d8  9bf2f20f  setlti r5, r5, 255
0021dc  1b73f30f  setlti r6, r6, 255
0021e0  97913200  or r3, r5, r3
0021e4  17124300  or r4, r6, r4
0021e8  97013200  and r3, r4, r3
0021ec  37ea0104  beq r3, zero, 2712
0021f0  3bfa0404  bneq r9, zero, 2716
0021f4  37200400  beq r8, zero, 8
0021f8  1f840400  addli r8, r9, 0
0021fc  93611006  setle.f r3, zero, r1
002200  13e20006  setle.f r4, r1, zero
002204  97013200  and r3, r4, r3
002208  3ba00100  bneq r3, zero, 8
00220c  1f840000  addli r8, r1, 0
002210  73608100  stores.w r8, 0(r2)
002214  00a00300  mfence { lm, sm, gm }
002218  80210e04  csr_set csr3, r28
00221c  00d00100  sync_group
002220  6f4a0100  loads.w r20, 0(r2)
002224  bf907b00  blt.s r23, r7, 36
002228  9f0c0000  addli r25, zero, 0
00222c  1f0d0000  addli r26, zero, 0
002230  5b050000  j 40
002234  ab01c07f  lui r3, 523264
002238  37d900f0  beq r1, zero, -7596
00223c  9f800100  addli r1, r3, 0
002240  3bc902f0  bneq r5, zero, -7600
002244  5b4afcff  j -7600
002248  8b604719  sub.f.rn r1, r14, r20
00224c  8be14919  sub.f.rn r3, r19, r20
002250  8f8c0000  exp.f.rn r25, r1
002254  0f8d0100  exp.f.rn r26, r3
002258  e3001ffe  loadli.w r1,  -248(r30)
00225c  0b9b8011  add.s r22, r1, r24
002260  e3400ffe  loadli.w r1,  -252(r30)
002264  8b9a8011  add.s r21, r1, r24
002268  e3000ffe  loadli.w r1,  -256(r30)
00226c  8b998011  add.s r19, r1, r24
002270  e340fffd  loadli.w r1,  -260(r30)
002274  0b978011  add.s r14, r1, r24
002278  e300fffd  loadli.w r1,  -264(r30)
00227c  8b968011  add.s r13, r1, r24
002280  e340effd  loadli.w r1,  -268(r30)
002284  0b968011  add.s r12, r1, r24
002288  e300effd  loadli.w r1,  -272(r30)
00228c  8b958011  add.s r11, r1, r24
002290  e340dffd  loadli.w r1,  -276(r30)
002294  0b958011  add.s r10, r1, r24
002298  e300dffd  loadli.w r1,  -280(r30)
00229c  8b948011  add.s r9, r1, r24
0022a0  e340cffd  loadli.w r1,  -284(r30)
0022a4  0b948011  add.s r8, r1, r24
0022a8  e300cffd  loadli.w r1,  -288(r30)
0022ac  0b938011  add.s r6, r1, r24
0022b0  e340bffd  loadli.w r1,  -292(r30)
0022b4  8b928011  add.s r5, r1, r24
0022b8  e300bffd  loadli.w r1,  -296(r30)
0022bc  0b928011  add.s r4, r1, r24
0022c0  e340affd  loadli.w r1,  -300(r30)
0022c4  8b908011  add.s r1, r1, r24
0022c8  67461ffe  storeli.w r1, -156(r30)
0022cc  e300affd  loadli.w r1,  -304(r30)
0022d0  8b908011  add.s r1, r1, r24
0022d4  1f0c0000  addli r24, zero, 0
0022d8  e7061ffe  storeli.w r1, -152(r30)
0022dc  db030000  j 28
0022e0  9f0d0000  addli r27, zero, 0
0022e4  1f0e0000  addli r28, zero, 0
0022e8  8becbc11  add.f.rn r25, r25, r27
0022ec  0b6dcd11  add.f.rn r26, r26, r28
0022f0  1f0c1c00  addli r24, r24, 8
0022f4  37012c01  beq r24, r18, 64
0022f8  3fa07b00  blt.s r23, r7, 8
0022fc  dbfcffff  j -28
002300  8b1d8811  add.s r27, r16, r24
002304  0b9e8811  add.s r28, r17, r24
002308  e3801d00  loadli.w r1,  8(r27)
00230c  e3011e00  loadli.w r3,  8(r28)
002310  e3cd1d00  loadli.w r27,  12(r27)
002314  634e1e00  loadli.w r28,  12(r28)
002318  8be03010  add.f.rn r1, r1, r3
00231c  8be1cd11  add.f.rn r3, r27, r28
002320  8be04019  sub.f.rn r1, r1, r20
002324  8be14119  sub.f.rn r3, r3, r20
002328  8f8d0000  exp.f.rn r27, r1
00232c  0f8e0100  exp.f.rn r28, r3
002330  5bf7ffff  j -72
002334  8be0ac11  add.f.rn r1, r25, r26
002338  e3412ffe  loadli.w r3,  -236(r30)
00233c  73e01100  stores.w r1, 0(r3)
002340  00a00300  mfence { lm, sm, gm }
002344  630ecffe  loadli.w r28,  -160(r30)
002348  80210e04  csr_set csr3, r28
00234c  00d00100  sync_group
002350  e340fffe  loadli.w r1,  -132(r30)
002354  3b980000  bneq r1, zero, 516
002358  efcb0700  loads.w r23, 0(r15)
00235c  efcc4700  loads.w r25, 4(r15)
002360  6fcc8700  loads.w r24, 8(r15)
002364  efc1c700  loads.w r3, 12(r15)
002368  8be09b11  add.f.rn r1, r23, r25
00236c  efcb0701  loads.w r23, 16(r15)
002370  8be08011  add.f.rn r1, r1, r24
002374  8be03010  add.f.rn r1, r1, r3
002378  efc14701  loads.w r3, 20(r15)
00237c  8be07011  add.f.rn r1, r1, r23
002380  efcb8701  loads.w r23, 24(r15)
002384  8be03010  add.f.rn r1, r1, r3
002388  efc1c701  loads.w r3, 28(r15)
00238c  8be07011  add.f.rn r1, r1, r23
002390  efcb0702  loads.w r23, 32(r15)
002394  8be03010  add.f.rn r1, r1, r3
002398  efc14702  loads.w r3, 36(r15)
00239c  8be07011  add.f.rn r1, r1, r23
0023a0  efcb8702  loads.w r23, 40(r15)
0023a4  8be03010  add.f.rn r1, r1, r3
0023a8  efc1c702  loads.w r3, 44(r15)
0023ac  8be07011  add.f.rn r1, r1, r23
0023b0  efcb0703  loads.w r23, 48(r15)
0023b4  8be03010  add.f.rn r1, r1, r3
0023b8  efc14703  loads.w r3, 52(r15)
0023bc  8be07011  add.f.rn r1, r1, r23
0023c0  efcb8703  loads.w r23, 56(r15)
0023c4  8be03010  add.f.rn r1, r1, r3
0023c8  efc1c703  loads.w r3, 60(r15)
0023cc  8be07011  add.f.rn r1, r1, r23
0023d0  efcb0704  loads.w r23, 64(r15)
0023d4  8be03010  add.f.rn r1, r1, r3
0023d8  efc14704  loads.w r3, 68(r15)
0023dc  8be07011  add.f.rn r1, r1, r23
0023e0  efcb8704  loads.w r23, 72(r15)
0023e4  8be03010  add.f.rn r1, r1, r3
0023e8  efc1c704  loads.w r3, 76(r15)
0023ec  8be07011  add.f.rn r1, r1, r23
0023f0  efcb0705  loads.w r23, 80(r15)
0023f4  8be03010  add.f.rn r1, r1, r3
0023f8  efc14705  loads.w r3, 84(r15)
0023fc  8be07011  add.f.rn r1, r1, r23
002400  efcb8705  loads.w r23, 88(r15)
002404  8be03010  add.f.rn r1, r1, r3
002408  efc1c705  loads.w r3, 92(r15)
00240c  8be07011  add.f.rn r1, r1, r23
002410  efcb0706  loads.w r23, 96(r15)
002414  8be03010  add.f.rn r1, r1, r3
002418  efc14706  loads.w r3, 100(r15)
00241c  8be07011  add.f.rn r1, r1, r23
002420  efcb8706  loads.w r23, 104(r15)
002424  8be03010  add.f.rn r1, r1, r3
002428  efc1c706  loads.w r3, 108(r15)
00242c  8be07011  add.f.rn r1, r1, r23
002430  efcb0707  loads.w r23, 112(r15)
002434  8be03010  add.f.rn r1, r1, r3
002438  efc14707  loads.w r3, 116(r15)
00243c  8be07011  add.f.rn r1, r1, r23
002440  efcb8707  loads.w r23, 120(r15)
002444  8be03010  add.f.rn r1, r1, r3
002448  efc1c707  loads.w r3, 124(r15)
00244c  8be07011  add.f.rn r1, r1, r23
002450  efcb0708  loads.w r23, 128(r15)
002454  8be03010  add.f.rn r1, r1, r3
002458  efc14708  loads.w r3, 132(r15)
00245c  8be07011  add.f.rn r1, r1, r23
002460  efcb8708  loads.w r23, 136(r15)
002464  8be03010  add.f.rn r1, r1, r3
002468  efc1c708  loads.w r3, 140(r15)
00246c  8be07011  add.f.rn r1, r1, r23
002470  efcb0709  loads.w r23, 144(r15)
002474  8be03010  add.f.rn r1, r1, r3
002478  efc14709  loads.w r3, 148(r15)
00247c  8be07011  add.f.rn r1, r1, r23
002480  efcb8709  loads.w r23, 152(r15)
002484  8be03010  add.f.rn r1, r1, r3
002488  efc1c709  loads.w r3, 156(r15)
00248c  8be07011  add.f.rn r1, r1, r23
002490  efcb070a  loads.w r23, 160(r15)
002494  8be03010  add.f.rn r1, r1, r3
002498  efc1470a  loads.w r3, 164(r15)
00249c  8be07011  add.f.rn r1, r1, r23
0024a0  efcb870a  loads.w r23, 168(r15)
0024a4  8be03010  add.f.rn r1, r1, r3
0024a8  efc1c70a  loads.w r3, 172(r15)
0024ac  8be07011  add.f.rn r1, r1, r23
0024b0  efcb070b  loads.w r23, 176(r15)
0024b4  8be03010  add.f.rn r1, r1, r3
0024b8  efc1470b  loads.w r3, 180(r15)
0024bc  8be07011  add.f.rn r1, r1, r23
0024c0  efcb870b  loads.w r23, 184(r15)
0024c4  8be03010  add.f.rn r1, r1, r3
0024c8  efc1c70b  loads.w r3, 188(r15)
0024cc  8be07011  add.f.rn r1, r1, r23
0024d0  efcb070c  loads.w r23, 192(r15)
0024d4  8be03010  add.f.rn r1, r1, r3
0024d8  efc1470c  loads.w r3, 196(r15)
0024dc  8be07011  add.f.rn r1, r1, r23
0024e0  efcb870c  loads.w r23, 200(r15)
0024e4  8be03010  add.f.rn r1, r1, r3
0024e8  efc1c70c  loads.w r3, 204(r15)
0024ec  8be07011  add.f.rn r1, r1, r23
0024f0  efcb070d  loads.w r23, 208(r15)
0024f4  8be03010  add.f.rn r1, r1, r3
0024f8  efc1470d  loads.w r3, 212(r15)
0024fc  8be07011  add.f.rn r1, r1, r23
002500  efcb870d  loads.w r23, 216(r15)
002504  8be03010  add.f.rn r1, r1, r3
002508  efc1c70d  loads.w r3, 220(r15)
00250c  8be07011  add.f.rn r1, r1, r23
002510  efcb070e  loads.w r23, 224(r15)
002514  8be03010  add.f.rn r1, r1, r3
002518  efc1470e  loads.w r3, 228(r15)
00251c  8be07011  add.f.rn r1, r1, r23
002520  efcb870e  loads.w r23, 232(r15)
002524  8be03010  add.f.rn r1, r1, r3
002528  efc1c70e  loads.w r3, 236(r15)
00252c  8be07011  add.f.rn r1, r1, r23
002530  efcb070f  loads.w r23, 240(r15)
002534  8be03010  add.f.rn r1, r1, r3
002538  efc1470f  loads.w r3, 244(r15)
00253c  8be07011  add.f.rn r1, r1, r23
002540  efcb870f  loads.w r23, 248(r15)
002544  8be03010  add.f.rn r1, r1, r3
002548  efc1c70f  loads.w r3, 252(r15)
00254c  8be07011  add.f.rn r1, r1, r23
002550  8be03010  add.f.rn r1, r1, r3
002554  73e01700  stores.w r1, 0(r15)
002558  00a00300  mfence { lm, sm, gm }
00255c  80210e04  csr_set csr3, r28
002560  00d00100  sync_group
002564  efcb0700  loads.w r23, 0(r15)
002568  1f0c0000  addli r24, zero, 0
00256c  8b918811  add.s r3, r17, r24
002570  8b108811  add.s r1, r16, r24
002574  1f0c1c00  addli r24, r24, 8
002578  e38c0000  loadli.w r25,  0(r1)
00257c  638d0100  loadli.w r26,  0(r3)
002580  e3c00000  loadli.w r1,  4(r1)
002584  e3cd0100  loadli.w r27,  4(r3)
002588  8becac11  add.f.rn r25, r25, r26
00258c  8be0b011  add.f.rn r1, r1, r27
002590  8bec4c19  sub.f.rn r25, r25, r20
002594  8be04019  sub.f.rn r1, r1, r20
002598  8f8c0c00  exp.f.rn r25, r25
00259c  8f800000  exp.f.rn r1, r1
0025a0  8f8c7c19  div.f.rn r25, r25, r23
0025a4  8f807019  div.f.rn r1, r1, r23
0025a8  67809101  storeli.w r25, 0(r3)
0025ac  67c01100  storeli.w r1, 4(r3)
0025b0  00a00000  mfence { lm }
0025b4  bb6e7cfe  bneq r24, r7, -72
0025b8  331b0b28  sext_int2long r[23:24], r22
0025bc  1f2d0000  addli r26, zero, 2
0025c0  6b5c0f01  load.d r[25:26], 16(r30)
0025c4  ab0000f0  lui r1, 983040
0025c8  9f4d0000  addli r27, zero, 4
0025cc  e341dffe  loadli.w r3,  -148(r30)
0025d0  339a0a28  sext_int2long r[21:22], r21
0025d4  173bab03  sll.d r[23:24], r[23:24], r26
0025d8  97901d00  or r1, r27, r1
0025dc  173aaa03  sll.d r[21:22], r[21:22], r26
0025e0  0b2b6c11  add.ul r[23:24], r[25:26], r[23:24]
0025e4  0b2a4c11  add.ul r[21:22], r[25:26], r[21:22]
0025e8  ff303b00  s_lm2gm r1, r3, 0(r[23:24])
0025ec  ab0000f0  lui r1, 983040
0025f0  339b0928  sext_int2long r[23:24], r19
0025f4  9f811800  addli r3, r17, 8
0025f8  97901d00  or r1, r27, r1
0025fc  173bab03  sll.d r[23:24], r[23:24], r26
002600  ff303a00  s_lm2gm r1, r3, 0(r[21:22])
002604  ab0000f0  lui r1, 983040
002608  8b296c11  add.ul r[20:21], r[25:26], r[23:24]
00260c  b31a0728  sext_int2long r[22:23], r14
002610  9fc11800  addli r3, r17, 12
002614  b3960628  sext_int2long r[14:15], r13
002618  97901d00  or r1, r27, r1
00261c  97baaa03  sll.d r[22:23], r[22:23], r26
002620  97b6a603  sll.d r[14:15], r[14:15], r26
002624  ffb03900  s_lm2gm r1, r3, 0(r[20:21])
002628  ab0000f0  lui r1, 983040
00262c  8b295c11  add.ul r[20:21], r[25:26], r[22:23]
002630  9f812800  addli r3, r17, 16
002634  8b26dc10  add.ul r[14:15], r[25:26], r[14:15]
002638  97901d00  or r1, r27, r1
00263c  ffb03900  s_lm2gm r1, r3, 0(r[20:21])
002640  ab0000f0  lui r1, 983040
002644  b3190628  sext_int2long r[20:21], r12
002648  9fc12800  addli r3, r17, 20
00264c  97901d00  or r1, r27, r1
002650  97b9a903  sll.d r[20:21], r[20:21], r26
002654  ffb03600  s_lm2gm r1, r3, 0(r[14:15])
002658  ab0000f0  lui r1, 983040
00265c  0b263c11  add.ul r[13:14], r[25:26], r[20:21]
002660  b3990528  sext_int2long r[20:21], r11
002664  9f813800  addli r3, r17, 24
002668  97901d00  or r1, r27, r1
00266c  97b9a903  sll.d r[20:21], r[20:21], r26
002670  ff303600  s_lm2gm r1, r3, 0(r[13:14])
002674  ab0000f0  lui r1, 983040
002678  8b253c11  add.ul r[12:13], r[25:26], r[20:21]
00267c  9fc13800  addli r3, r17, 28
002680  b3160528  sext_int2long r[14:15], r10
002684  97901d00  or r1, r27, r1
002688  ffb03500  s_lm2gm r1, r3, 0(r[12:13])
00268c  ab0000f0  lui r1, 983040
002690  17b5a603  sll.d r[11:12], r[14:15], r26
002694  33960428  sext_int2long r[13:14], r9
002698  9f814800  addli r3, r17, 32
00269c  8b24ac10  add.ul r[10:11], r[25:26], r[11:12]
0026a0  97901d00  or r1, r27, r1
0026a4  9735a603  sll.d r[12:13], r[13:14], r26
0026a8  ffb03400  s_lm2gm r1, r3, 0(r[10:11])
0026ac  ab0000f0  lui r1, 983040
0026b0  33140428  sext_int2long r[9:10], r8
0026b4  8b25bc10  add.ul r[12:13], r[25:26], r[12:13]
0026b8  9fc14800  addli r3, r17, 36
0026bc  97901d00  or r1, r27, r1
0026c0  1734a403  sll.d r[9:10], r[9:10], r26
0026c4  ffb03500  s_lm2gm r1, r3, 0(r[12:13])
0026c8  ab0000f0  lui r1, 983040
0026cc  33150328  sext_int2long r[11:12], r6
0026d0  0b248c10  add.ul r[9:10], r[25:26], r[9:10]
0026d4  9f815800  addli r3, r17, 40
0026d8  2b0300f0  lui r6, 983040
0026dc  1fc65800  addli r12, r17, 44
0026e0  97901d00  or r1, r27, r1
0026e4  1735a503  sll.d r[11:12], r[11:12], r26
0026e8  17936d00  or r6, r27, r6
0026ec  ff303400  s_lm2gm r1, r3, 0(r[9:10])
0026f0  6b540ff7  load.d r[9:10], -144(r30)
0026f4  ab0000f0  lui r1, 983040
0026f8  0b25ac10  add.ul r[11:12], r[25:26], r[11:12]
0026fc  b3110228  sext_int2long r[4:5], r4
002700  7f33c500  s_lm2gm r6, r12, 0(r[11:12])
002704  b3920228  sext_int2long r[6:7], r5
002708  97901d00  or r1, r27, r1
00270c  97b1a103  sll.d r[4:5], r[4:5], r26
002710  1fc57800  addli r10, r17, 60
002714  9f250000  addli r11, zero, 2
002718  0b248c10  add.ul r[9:10], r[25:26], r[9:10]
00271c  97b2a203  sll.d r[6:7], r[6:7], r26
002720  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
002724  ff301401  s_lm2gm r1, r17, 0(r[9:10])
002728  ab0000f0  lui r1, 983040
00272c  1f846800  addli r8, r17, 48
002730  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
002734  97901d00  or r1, r27, r1
002738  ffb08200  s_lm2gm r1, r8, 0(r[6:7])
00273c  ab0000f0  lui r1, 983040
002740  9fc26800  addli r5, r17, 52
002744  6343cffe  loadli.w r6,  -156(r30)
002748  97901d00  or r1, r27, r1
00274c  33140328  sext_int2long r[9:10], r6
002750  ffb05100  s_lm2gm r1, r5, 0(r[4:5])
002754  e300dffe  loadli.w r1,  -152(r30)
002758  9732a403  sll.d r[6:7], r[9:10], r26
00275c  ab0400f0  lui r9, 983040
002760  1f847800  addli r8, r17, 56
002764  b3910028  sext_int2long r[4:5], r1
002768  ab0000f0  lui r1, 983040
00276c  8b225c10  add.ul r[6:7], r[25:26], r[6:7]
002770  97949d00  or r9, r27, r9
002774  97b1a103  sll.d r[4:5], r[4:5], r26
002778  97901d00  or r1, r27, r1
00277c  8b213c10  add.ul r[4:5], r[25:26], r[4:5]
002780  ffb08200  s_lm2gm r1, r8, 0(r[6:7])
002784  e3401ffe  loadli.w r1,  -244(r30)
002788  ffb4a100  s_lm2gm r9, r10, 0(r[4:5])
00278c  6305fffe  loadli.w r10,  -136(r30)
002790  00a00000  mfence { lm }
002794  0b151510  add.s r10, r10, r1
002798  e3403ffe  loadli.w r1,  -228(r30)
00279c  bf1a15ec  blt.s r10, r1, -9564
0027a0  5b9f0000  j 1272
0027a4  ab01c07f  lui r3, 523264
0027a8  b74502ee  beq r4, zero, -8848
0027ac  1f820100  addli r4, r3, 0
0027b0  bbb500ee  bneq r1, zero, -8852
0027b4  dbadfbff  j -8852
0027b8  ab01c07f  lui r3, 523264
0027bc  37b700ee  beq r1, zero, -8756
0027c0  9f800100  addli r1, r3, 0
0027c4  3ba709ee  bneq r19, zero, -8760
0027c8  5bb9fbff  j -8760
0027cc  ab00c07f  lui r1, 523264
0027d0  37cf09ee  beq r19, zero, -8240
0027d4  9f890000  addli r19, r1, 0
0027d8  634c3ffd  loadli.w r24,  -356(r30)
0027dc  3bbf02ee  bneq r5, zero, -8244
0027e0  dbf9fbff  j -8244
0027e4  ab00c07f  lui r1, 523264
0027e8  b7a40af0  beq r21, zero, -7896
0027ec  9f8a0000  addli r21, r1, 0
0027f0  bb1407f0  bneq r14, zero, -7900
0027f4  db24fcff  j -7900
0027f8  ab00c07f  lui r1, 523264
0027fc  370607f0  beq r14, zero, -7808
002800  1f870000  addli r14, r1, 0
002804  bbf50df0  bneq r27, zero, -7812
002808  db2ffcff  j -7812
00280c  ab00c07f  lui r1, 523264
002810  37e70df0  beq r27, zero, -7720
002814  9f8d0000  addli r27, r1, 0
002818  3b570ef0  bneq r28, zero, -7724
00281c  db3afcff  j -7724
002820  ab00c07f  lui r1, 523264
002824  b7480ef0  beq r28, zero, -7632
002828  1f8e0000  addli r28, r1, 0
00282c  bbb806f0  bneq r13, zero, -7636
002830  db45fcff  j -7636
002834  ab00c07f  lui r1, 523264
002838  37aa06f0  beq r13, zero, -7544
00283c  9f860000  addli r13, r1, 0
002840  3b1a04f0  bneq r8, zero, -7548
002844  db50fcff  j -7548
002848  ab00c07f  lui r1, 523264
00284c  6345dffc  loadli.w r10,  -404(r30)
002850  b70b04f0  beq r8, zero, -7456
002854  1f840000  addli r8, r1, 0
002858  3b7b03f0  bneq r6, zero, -7460
00285c  db5bfcff  j -7460
002860  ab00c07f  lui r1, 523264
002864  e304dffc  loadli.w r9,  -408(r30)
002868  b75c03f0  beq r6, zero, -7372
00286c  1f830000  addli r6, r1, 0
002870  bbcc01f0  bneq r3, zero, -7376
002874  5b66fcff  j -7376
002878  ab00c07f  lui r1, 523264
00287c  6344fffc  loadli.w r8,  -388(r30)
002880  37ae01f0  beq r3, zero, -7288
002884  9f810000  addli r3, r1, 0
002888  3b1e06f0  bneq r12, zero, -7292
00288c  db70fcff  j -7292
002890  ab00c07f  lui r1, 523264
002894  377f06f0  beq r12, zero, -7204
002898  1f860000  addli r12, r1, 0
00289c  3bef05f0  bneq r11, zero, -7208
0028a0  5b7bfcff  j -7208
0028a4  ab00c07f  lui r1, 523264
0028a8  b7d005f2  beq r11, zero, -7116
0028ac  9f850000  addli r11, r1, 0
0028b0  bb400bf2  bneq r22, zero, -7120
0028b4  5b86fcff  j -7120
0028b8  ab00c07f  lui r1, 523264
0028bc  e3424ffe  loadli.w r5,  -220(r30)
0028c0  37320bf2  beq r22, zero, -7028
0028c4  1f8b0000  addli r22, r1, 0
0028c8  3ba20df2  bneq r27, zero, -7032
0028cc  5b91fcff  j -7032
0028d0  ab00c07f  lui r1, 523264
0028d4  b7930df2  beq r27, zero, -6940
0028d8  9f8d0000  addli r27, r1, 0
0028dc  63434ffe  loadli.w r6,  -220(r30)
0028e0  bb0303f2  bneq r6, zero, -6944
0028e4  5b9cfcff  j -6944
0028e8  ab00c07f  lui r1, 523264
0028ec  e3025ffe  loadli.w r5,  -216(r30)
0028f0  b7f40df2  beq r27, zero, -6852
0028f4  9f8d0000  addli r27, r1, 0
0028f8  bb6407f2  bneq r14, zero, -6856
0028fc  5ba7fcff  j -6856
002900  ab00c07f  lui r1, 523264
002904  374607f2  beq r14, zero, -6768
002908  1f870000  addli r14, r1, 0
00290c  63035ffe  loadli.w r6,  -216(r30)
002910  3b3603f2  bneq r6, zero, -6772
002914  dbb1fcff  j -6772
002918  ab00c07f  lui r1, 523264
00291c  e3425ffe  loadli.w r5,  -212(r30)
002920  b72707f2  beq r14, zero, -6680
002924  1f870000  addli r14, r1, 0
002928  bb170ef2  bneq r28, zero, -6684
00292c  dbbcfcff  j -6684
002930  ab00c07f  lui r1, 523264
002934  e3026ffe  loadli.w r5,  -208(r30)
002938  379b0df2  beq r27, zero, -6460
00293c  9f8d0000  addli r27, r1, 0
002940  3b8b05f2  bneq r11, zero, -6464
002944  5bd8fcff  j -6464
002948  ab00c07f  lui r1, 523264
00294c  1f070e00  addli r14, r28, 0
002950  b78c05f2  beq r11, zero, -6368
002954  9f850000  addli r11, r1, 0
002958  63036ffe  loadli.w r6,  -208(r30)
00295c  3b7c03f2  bneq r6, zero, -6372
002960  dbe3fcff  j -6372
002964  ab00c07f  lui r1, 523264
002968  e3426ffe  loadli.w r5,  -204(r30)
00296c  b7ed05f2  beq r11, zero, -6280
002970  9f850000  addli r11, r1, 0
002974  bb5d06f2  bneq r12, zero, -6284
002978  dbeefcff  j -6284
00297c  ab00c07f  lui r1, 523264
002980  373f06f2  beq r12, zero, -6196
002984  1f860000  addli r12, r1, 0
002988  63436ffe  loadli.w r6,  -204(r30)
00298c  3b2f03f2  bneq r6, zero, -6200
002990  5bf9fcff  j -6200
002994  ab00c07f  lui r1, 523264
002998  e3027ffe  loadli.w r5,  -200(r30)
00299c  b71006f4  beq r12, zero, -6108
0029a0  1f860000  addli r12, r1, 0
0029a4  bb8006f4  bneq r13, zero, -6112
0029a8  5b04fdff  j -6112
0029ac  ab00c07f  lui r1, 523264
0029b0  b7e106f4  beq r13, zero, -6024
0029b4  9f860000  addli r13, r1, 0
0029b8  63037ffe  loadli.w r6,  -200(r30)
0029bc  bb5103f4  bneq r6, zero, -6028
0029c0  db0efdff  j -6028
0029c4  ab00c07f  lui r1, 523264
0029c8  e3427ffe  loadli.w r5,  -196(r30)
0029cc  37c306f4  beq r13, zero, -5936
0029d0  9f860000  addli r13, r1, 0
0029d4  3b330df4  bneq r26, zero, -5940
0029d8  db19fdff  j -5940
0029dc  ab00c07f  lui r1, 523264
0029e0  b7140df4  beq r26, zero, -5852
0029e4  1f8d0000  addli r26, r1, 0
0029e8  63437ffe  loadli.w r6,  -196(r30)
0029ec  bb0403f4  bneq r6, zero, -5856
0029f0  5b24fdff  j -5856
0029f4  ab00c07f  lui r1, 523264
0029f8  e3028ffe  loadli.w r5,  -192(r30)
0029fc  b7750df4  beq r26, zero, -5764
002a00  1f8d0000  addli r26, r1, 0
002a04  bbe50af4  bneq r21, zero, -5768
002a08  5b2ffdff  j -5768
002a0c  ab00c07f  lui r1, 523264
002a10  37c70af4  beq r21, zero, -5680
002a14  9f8a0000  addli r21, r1, 0
002a18  63038ffe  loadli.w r6,  -192(r30)
002a1c  3b3703f4  bneq r6, zero, -5684
002a20  db39fdff  j -5684
002a24  ab00c07f  lui r1, 523264
002a28  b7a80af4  beq r21, zero, -5592
002a2c  9f8a0000  addli r21, r1, 0
002a30  bb9809f4  bneq r19, zero, -5596
002a34  db44fdff  j -5596
002a38  ab00c07f  lui r1, 523264
002a3c  e3428ffe  loadli.w r5,  -188(r30)
002a40  b7f909f4  beq r19, zero, -5508
002a44  9f890000  addli r19, r1, 0
002a48  bb690af4  bneq r20, zero, -5512
002a4c  5b4ffdff  j -5512
002a50  ab00c07f  lui r1, 523264
002a54  e3029ffe  loadli.w r5,  -184(r30)
002a58  b78d0af4  beq r21, zero, -5280
002a5c  9f8a0000  addli r21, r1, 0
002a60  3bfd04f4  bneq r9, zero, -5284
002a64  db6bfdff  j -5284
002a68  ab00c07f  lui r1, 523264
002a6c  e3429ffe  loadli.w r5,  -180(r30)
002a70  378104f6  beq r9, zero, -5056
002a74  9f840000  addli r9, r1, 0
002a78  bb7005f6  bneq r10, zero, -5060
002a7c  db87fdff  j -5060
002a80  ab00c07f  lui r1, 523264
002a84  375205f6  beq r10, zero, -4972
002a88  1f850000  addli r10, r1, 0
002a8c  63439ffe  loadli.w r6,  -180(r30)
002a90  3b4203f6  bneq r6, zero, -4976
002a94  5b92fdff  j -4976
002a98  ab00c07f  lui r1, 523264
002a9c  e302affe  loadli.w r5,  -176(r30)
002aa0  b73305f6  beq r10, zero, -4884
002aa4  1f850000  addli r10, r1, 0
002aa8  bba30cf6  bneq r25, zero, -4888
002aac  5b9dfdff  j -4888
002ab0  ab00c07f  lui r1, 523264
002ab4  e342affe  loadli.w r5,  -172(r30)
002ab8  37a704f6  beq r9, zero, -4664
002abc  9f840000  addli r9, r1, 0
002ac0  3b1704f6  bneq r8, zero, -4668
002ac4  dbb8fdff  j -4668
002ac8  ab00c07f  lui r1, 523264
002acc  1f8d0c00  addli r26, r25, 0
002ad0  b71804f6  beq r8, zero, -4572
002ad4  1f840000  addli r8, r1, 0
002ad8  6343affe  loadli.w r6,  -172(r30)
002adc  bb0803f6  bneq r6, zero, -4576
002ae0  5bc4fdff  j -4576
002ae4  ab00c07f  lui r1, 523264
002ae8  e302bffe  loadli.w r5,  -168(r30)
002aec  b77904f6  beq r8, zero, -4484
002af0  1f840000  addli r8, r1, 0
002af4  bb690af6  bneq r20, zero, -4488
002af8  5bcffdff  j -4488
002afc  ab00c07f  lui r1, 523264
002b00  375b0af6  beq r20, zero, -4396
002b04  1f8a0000  addli r20, r1, 0
002b08  6303bffe  loadli.w r6,  -168(r30)
002b0c  3b4b03f6  bneq r6, zero, -4400
002b10  5bdafdff  j -4400
002b14  ab00c07f  lui r1, 523264
002b18  e342bffe  loadli.w r5,  -164(r30)
002b1c  b73c0ef6  beq r28, zero, -4308
002b20  1f8e0000  addli r28, r1, 0
002b24  bb2c07f6  bneq r14, zero, -4312
002b28  5be5fdff  j -4312
002b2c  ab00c07f  lui r1, 523264
002b30  370e07f6  beq r14, zero, -4224
002b34  1f870000  addli r14, r1, 0
002b38  6343bffe  loadli.w r6,  -164(r30)
002b3c  bb7d03f6  bneq r6, zero, -4228
002b40  dbeffdff  j -4228
002b44  ab00c07f  lui r1, 523264
002b48  e342cffe  loadli.w r5,  -156(r30)
002b4c  376f07f6  beq r14, zero, -4136
002b50  1f870000  addli r14, r1, 0
002b54  3bdf09f6  bneq r19, zero, -4140
002b58  dbfafdff  j -4140
002b5c  ab00c07f  lui r1, 523264
002b60  b7c009f8  beq r19, zero, -4048
002b64  9f890000  addli r19, r1, 0
002b68  6343cffe  loadli.w r6,  -156(r30)
002b6c  bb3003f8  bneq r6, zero, -4052
002b70  db05feff  j -4052
002b74  ab00c07f  lui r1, 523264
002b78  37220af8  beq r20, zero, -3960
002b7c  1f8a0000  addli r20, r1, 0
002b80  3b1207f8  bneq r14, zero, -3964
002b84  db10feff  j -3964
002b88  ab00c07f  lui r1, 523264
002b8c  e302dffe  loadli.w r5,  -152(r30)
002b90  377307f8  beq r14, zero, -3876
002b94  1f870000  addli r14, r1, 0
002b98  3b6304f8  bneq r8, zero, -3880
002b9c  5b1bfeff  j -3880
002ba0  ab00c07f  lui r1, 523264
002ba4  379709f8  beq r19, zero, -3644
002ba8  9f890000  addli r19, r1, 0
002bac  3b870df8  bneq r27, zero, -3648
002bb0  5b38feff  j -3648
002bb4  ab00c07f  lui r1, 523264
002bb8  1f040e00  addli r8, r28, 0
002bbc  b7880df8  beq r27, zero, -3552
002bc0  9f8d0000  addli r27, r1, 0
002bc4  1f8e0c00  addli r28, r25, 0
002bc8  3b780df8  bneq r26, zero, -3556
002bcc  db43feff  j -3556
002bd0  ab00c07f  lui r1, 523264
002bd4  b7590df8  beq r26, zero, -3468
002bd8  1f8d0000  addli r26, r1, 0
002bdc  bb490af8  bneq r20, zero, -3472
002be0  5b4efeff  j -3472
002be4  ab00c07f  lui r1, 523264
002be8  372b0af8  beq r20, zero, -3384
002bec  1f8a0000  addli r20, r1, 0
002bf0  3b1b0bf8  bneq r22, zero, -3388
002bf4  db58feff  j -3388
002bf8  ab00c07f  lui r1, 523264
002bfc  b70c0bf8  beq r22, zero, -3296
002c00  1f8b0000  addli r22, r1, 0
002c04  3bfc0af8  bneq r21, zero, -3300
002c08  db63feff  j -3300
002c0c  ab00c07f  lui r1, 523264
002c10  b7dd0af8  beq r21, zero, -3212
002c14  9f8a0000  addli r21, r1, 0
002c18  bb4d0af8  bneq r20, zero, -3216
002c1c  5b6efeff  j -3216
002c20  ab00c07f  lui r1, 523264
002c24  372f0af8  beq r20, zero, -3128
002c28  1f8a0000  addli r20, r1, 0
002c2c  3b9f06f8  bneq r13, zero, -3132
002c30  db78feff  j -3132
002c34  ab00c07f  lui r1, 523264
002c38  37f006fa  beq r13, zero, -3044
002c3c  9f860000  addli r13, r1, 0
002c40  3b6006fa  bneq r12, zero, -3048
002c44  5b83feff  j -3048
002c48  ab00c07f  lui r1, 523264
002c4c  b74106fa  beq r12, zero, -2960
002c50  1f860000  addli r12, r1, 0
002c54  bbb105fa  bneq r11, zero, -2964
002c58  db8dfeff  j -2964
002c5c  ab00c07f  lui r1, 523264
002c60  379305fa  beq r11, zero, -2876
002c64  9f850000  addli r11, r1, 0
002c68  3b0305fa  bneq r10, zero, -2880
002c6c  5b98feff  j -2880
002c70  ab00c07f  lui r1, 523264
002c74  376405fa  beq r10, zero, -2792
002c78  1f850000  addli r10, r1, 0
002c7c  3bd404fa  bneq r9, zero, -2796
002c80  dba2feff  j -2796
002c84  ab00c07f  lui r1, 523264
002c88  b7b504fa  beq r9, zero, -2708
002c8c  9f840000  addli r9, r1, 0
002c90  bb2504fa  bneq r8, zero, -2712
002c94  5badfeff  j -2712
002c98  9f8e9e03  addli sp, sp, 456
002c9c  00a00300  mfence { lm, sm, gm }
002ca0  00100000  exit
002ca4  00100000  exit
002ca8  00100000  exit
002cac  00100000  exit
002cb0  00100000  exit
002cb4  00100000  exit
002cb8  00100000  exit
002cbc  00100000  exit
002cc0  00100000  exit
002cc4  00100000  exit
002cc8  00100000  exit
002ccc  00100000  exit
002cd0  00100000  exit
002cd4  00100000  exit
002cd8  00100000  exit
002cdc  00100000  exit
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
