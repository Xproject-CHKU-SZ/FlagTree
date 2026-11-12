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
0000dc  9f8e6efb  addli sp, sp, -592
0000e0  1f8f2e04  addli r30, sp, 528
0000e4  ab000000  lui r1, 0
0000e8  80310002  core_id r3
0000ec  abf20000  lui r5, 15
0000f0  00550002  load_param_i r10, 0
0000f4  634b4f00  loadli.w r22,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  1bb12100  slli r2, r3, 2
000100  9f800000  addli r1, r1, 0
000104  1b9ef2ff  ori r28, r5, 4095
000108  abf27fff  lui r5, 1046527
00010c  630a5f00  loadli.w r20,  40(r30)
000110  8b1d1110  add.s r27, r2, r1
000114  9b92f2ff  ori r5, r5, 4095
000118  0b124b20  mul.s r4, r22, r4
00011c  73e80d40  stores.w zero, 1040(r27)
000120  00a00300  mfence { lm, sm, gm }
000124  80210e04  csr_set csr3, r28
000128  00d00100  sync_group
00012c  73e05d00  stores.w r5, 0(r27)
000130  0b124221  mul.s r4, r4, r20
000134  00a00300  mfence { lm, sm, gm }
000138  80210e04  csr_set csr3, r28
00013c  00d00100  sync_group
000140  e74f4ffc  storeli.w r4, -260(r30)
000144  4b7ba214  ble.s r4, r10, 10972
000148  9f038000  addli r7, zero, 64
00014c  1f842d08  addli r8, r27, 1040
000150  9f150000  addli r11, zero, 1
000154  6b528f00  load.d r[5:6], 8(r30)
000158  9f0b0ffe  addli r23, r30, -256
00015c  1f0c8ffe  addli r24, r30, -192
000160  9f4c7000  addli r25, zero, 60
000164  2b0d80ff  lui r26, 1046528
000168  e70fbffb  storeli.w r27, -520(r30)
00016c  674fcffb  storeli.w r28, -524(r30)
000170  0b937130  div.s r6, r3, r7
000174  67488ffc  storeli.w r8, -380(r30)
000178  00d40002  load_param_i r8, 1
00017c  674f8ffc  storeli.w r8, -268(r30)
000180  1b84f103  andi r8, r3, 63
000184  670f8ffc  storeli.w r8, -272(r30)
000188  e70f6ffc  storeli.w r6, -264(r30)
00018c  1b336300  slli r6, r6, 6
000190  8b916118  sub.s r3, r3, r6
000194  2bf3ffff  lui r6, 1048575
000198  1bb45100  slli r8, r3, 5
00019c  9b1103f0  ori r3, r6, 3840
0001a0  17013100  and r2, r2, r3
0001a4  67088ffc  storeli.w r8, -384(r30)
0001a8  33140428  sext_int2long r[9:10], r8
0001ac  9f71f00f  addli r3, zero, 2047
0001b0  0b191110  add.s r18, r2, r1
0001b4  1734b402  sll.d r[9:10], r[9:10], r11
0001b8  8b208210  add.ul r[2:3], r[5:6], r[9:10]
0001bc  9f0a2908  addli r21, r18, 1040
0001c0  1f020500  addli r4, r10, 0
0001c4  733c1fe6  store.d r[2:3], -392(r30)
0001c8  670f5ffb  storeli.w r21, -528(r30)
0001cc  5b030000  j 24
0001d0  e340effd  loadli.w r1,  -268(r30)
0001d4  0b121210  add.s r4, r4, r1
0001d8  e340fffd  loadli.w r1,  -260(r30)
0001dc  3f201200  blt.s r4, r1, 8
0001e0  5b480500  j 10816
0001e4  8b104231  div.s r1, r4, r20
0001e8  6301fffd  loadli.w r2,  -264(r30)
0001ec  8b906031  div.s r1, r1, r22
0001f0  8b902010  add.s r1, r1, r2
0001f4  3fff11fe  blt.s r3, r1, -36
0001f8  1f010000  addli r2, zero, 0
0001fc  8b912b10  add.s r3, r23, r2
000200  1f410100  addli r2, r2, 4
000204  73900100  store.h zero, 0(r3)
000208  73910100  store.h zero, 2(r3)
00020c  00a00000  mfence { lm }
000210  bb3f71fe  bneq r2, r7, -20
000214  63010ffd  loadli.w r2,  -384(r30)
000218  9bb0b000  slli r1, r1, 11
00021c  e74e4ffc  storeli.w r4, -276(r30)
000220  6b520f00  load.d r[5:6], 0(r30)
000224  8b902010  add.s r1, r1, r2
000228  33910028  sext_int2long r[3:4], r1
00022c  9f100000  addli r1, zero, 1
000230  73302fee  store.d r[3:4], -288(r30)
000234  97301102  sll.d r[2:3], r[3:4], r1
000238  ab0100f0  lui r3, 983040
00023c  8b201210  add.ul r[2:3], r[5:6], r[2:3]
000240  97913300  or r3, r7, r3
000244  ffa17001  l_gm2lm r3, r23, 0(r[2:3])
000248  9f000000  addli r1, zero, 0
00024c  0b111c10  add.s r2, r24, r1
000250  9fc00000  addli r1, r1, 4
000254  73100100  store.h zero, 0(r2)
000258  73110100  store.h zero, 2(r2)
00025c  00a00000  mfence { lm }
000260  bbbf70fe  bneq r1, r7, -20
000264  ab0000f0  lui r1, 983040
000268  6b528fe7  load.d r[5:6], -392(r30)
00026c  9f010000  addli r3, zero, 0
000270  9fa40b00  addli r9, r23, 2
000274  1f240c00  addli r8, r24, 2
000278  97901300  or r1, r7, r1
00027c  ff208201  l_gm2lm r1, r24, 0(r[5:6])
000280  00a00000  mfence { lm }
000284  eb300ff0  load.hu r1, -256(r30)
000288  6b312ff0  load.hu r2, -254(r30)
00028c  6b320ff4  load.hu r4, -192(r30)
000290  eb322ff4  load.hu r5, -190(r30)
000294  b3900020  hfloat2float.rn r1, r1
000298  33120220  hfloat2float.rn r4, r4
00029c  33110120  hfloat2float.rn r2, r2
0002a0  b3920220  hfloat2float.rn r5, r5
0002a4  0be84010  add.f.rn r16, r1, r4
0002a8  8b675110  add.f.rn r15, r2, r5
0002ac  9f800700  addli r1, r15, 0
0002b0  1f010800  addli r2, r16, 0
0002b4  db010000  j 12
0002b8  9fc10100  addli r3, r3, 4
0002bc  b7e49101  beq r3, r25, 312
0002c0  0b923b10  add.s r4, r23, r3
0002c4  8b123c10  add.s r5, r24, r3
0002c8  6b334200  load.hu r6, 4(r4)
0002cc  6bb54200  load.hu r10, 4(r5)
0002d0  6b326200  load.hu r4, 6(r4)
0002d4  ebb26200  load.hu r5, 6(r5)
0002d8  33130320  hfloat2float.rn r6, r6
0002dc  33150520  hfloat2float.rn r10, r10
0002e0  0b63a310  add.f.rn r6, r6, r10
0002e4  1f050100  addli r10, r2, 0
0002e8  93652304  setlt.f r11, r6, r2
0002ec  3ba00500  bneq r11, zero, 8
0002f0  1f050300  addli r10, r6, 0
0002f4  9b359300  slli r11, r6, 9
0002f8  1b369100  slli r12, r2, 9
0002fc  9b467301  srli r13, r6, 23
000300  1b477101  srli r14, r2, 23
000304  93850500  seteq r11, r11, zero
000308  13060600  seteq r12, r12, zero
00030c  9b86f60f  andi r13, r13, 255
000310  1b07f70f  andi r14, r14, 255
000314  9bf6f60f  setlti r13, r13, 255
000318  1b77f70f  setlti r14, r14, 255
00031c  9795b600  or r11, r13, r11
000320  1716c700  or r12, r14, r12
000324  9705b600  and r11, r12, r11
000328  b7920500  beq r11, zero, 164
00032c  bb220100  bneq r2, zero, 168
000330  37200300  beq r6, zero, 8
000334  1f030100  addli r6, r2, 0
000338  1361a006  setle.f r2, zero, r10
00033c  93650506  setle.f r11, r10, zero
000340  97852500  and r11, r11, r2
000344  1f010300  addli r2, r6, 0
000348  3ba00500  bneq r11, zero, 8
00034c  1f010500  addli r2, r10, 0
000350  33120220  hfloat2float.rn r4, r4
000354  b3920220  hfloat2float.rn r5, r5
000358  0b625210  add.f.rn r4, r4, r5
00035c  9f820000  addli r5, r1, 0
000360  13631204  setlt.f r6, r4, r1
000364  3b200300  bneq r6, zero, 8
000368  9f020200  addli r5, r4, 0
00036c  1b339200  slli r6, r4, 9
000370  1bb59000  slli r10, r1, 9
000374  9b457201  srli r11, r4, 23
000378  1bc67001  srli r12, r1, 23
00037c  13030300  seteq r6, r6, zero
000380  13050500  seteq r10, r10, zero
000384  9b85f50f  andi r11, r11, 255
000388  1b06f60f  andi r12, r12, 255
00038c  9bf5f50f  setlti r11, r11, 255
000390  1b76f60f  setlti r12, r12, 255
000394  17936500  or r6, r11, r6
000398  1715a600  or r10, r12, r10
00039c  17036500  and r6, r10, r6
0003a0  37010300  beq r6, zero, 64
0003a4  3b910000  bneq r1, zero, 68
0003a8  37200200  beq r4, zero, 8
0003ac  1f820000  addli r4, r1, 0
0003b0  93605006  setle.f r1, zero, r5
0003b4  13e30206  setle.f r6, r5, zero
0003b8  17031300  and r6, r6, r1
0003bc  9f000200  addli r1, r4, 0
0003c0  bb6b03fe  bneq r6, zero, -264
0003c4  9f800200  addli r1, r5, 0
0003c8  5bdeffff  j -272
0003cc  2b05c07f  lui r10, 523264
0003d0  b70d01fe  beq r2, zero, -160
0003d4  1f010500  addli r2, r10, 0
0003d8  3b7d03fe  bneq r6, zero, -164
0003dc  dbebffff  j -164
0003e0  ab02c07f  lui r5, 523264
0003e4  379f00fe  beq r1, zero, -60
0003e8  9f800200  addli r1, r5, 0
0003ec  3b0f02fe  bneq r4, zero, -64
0003f0  5bf8ffff  j -64
0003f4  1b329800  slli r4, r16, 9
0003f8  93610d07  setle.f r3, r26, r16
0003fc  9362a807  setle.f r5, r16, r26
000400  1b437801  srli r6, r16, 23
000404  ab05803f  lui r11, 260096
000408  2b06803f  lui r12, 260096
00040c  13020200  seteq r4, r4, zero
000410  1b03f30f  andi r6, r6, 255
000414  1b73f30f  setlti r6, r6, 255
000418  97813200  and r3, r5, r3
00041c  17124300  or r4, r6, r4
000420  97814100  and r3, r3, r4
000424  3bf00100  bneq r3, zero, 28
000428  8b610d19  sub.f.rn r3, r26, r16
00042c  0b620819  sub.f.rn r4, r16, r16
000430  8f810100  exp.f.rn r3, r3
000434  0f020200  exp.f.rn r4, r4
000438  8be10120  mul.f.rn r3, r3, zero
00043c  0b663210  add.f.rn r12, r4, r3
000440  1bb29700  slli r4, r15, 9
000444  9361fd06  setle.f r3, r26, r15
000448  93e2a707  setle.f r5, r15, r26
00044c  1bc37701  srli r6, r15, 23
000450  13020200  seteq r4, r4, zero
000454  1b03f30f  andi r6, r6, 255
000458  1b73f30f  setlti r6, r6, 255
00045c  97813200  and r3, r5, r3
000460  17124300  or r4, r6, r4
000464  97814100  and r3, r3, r4
000468  3bf00100  bneq r3, zero, 28
00046c  8b61fd18  sub.f.rn r3, r26, r15
000470  0be2f718  sub.f.rn r4, r15, r15
000474  8f810100  exp.f.rn r3, r3
000478  0f020200  exp.f.rn r4, r4
00047c  8be10120  mul.f.rn r3, r3, zero
000480  8b653210  add.f.rn r11, r4, r3
000484  13e22004  setlt.f r4, r1, r2
000488  9f010100  addli r3, r2, 0
00048c  3b200200  bneq r4, zero, 8
000490  9f810000  addli r3, r1, 0
000494  1bb29000  slli r4, r1, 9
000498  9b329100  slli r5, r2, 9
00049c  1bc37001  srli r6, r1, 23
0004a0  1b457101  srli r10, r2, 23
0004a4  13020200  seteq r4, r4, zero
0004a8  93820200  seteq r5, r5, zero
0004ac  1b03f30f  andi r6, r6, 255
0004b0  1b05f50f  andi r10, r10, 255
0004b4  1b73f30f  setlti r6, r6, 255
0004b8  1b75f50f  setlti r10, r10, 255
0004bc  17124300  or r4, r6, r4
0004c0  97125500  or r5, r10, r5
0004c4  17824200  and r4, r5, r4
0004c8  37380210  beq r4, zero, 8716
0004cc  3b480110  bneq r2, zero, 8720
0004d0  37a00000  beq r1, zero, 8
0004d4  9f000100  addli r1, r2, 0
0004d8  13613006  setle.f r2, zero, r3
0004dc  13e20106  setle.f r4, r3, zero
0004e0  17012200  and r2, r4, r2
0004e4  3b200100  bneq r2, zero, 8
0004e8  9f800100  addli r1, r3, 0
0004ec  73e01d00  stores.w r1, 0(r27)
0004f0  00a00300  mfence { lm, sm, gm }
0004f4  80210e04  csr_set csr3, r28
0004f8  00d00100  sync_group
0004fc  e300effd  loadli.w r1,  -272(r30)
000500  3be6000e  bneq r1, zero, 7576
000504  ef410900  loads.w r3, 0(r18)
000508  ef404900  loads.w r1, 4(r18)
00050c  13e23004  setlt.f r4, r1, r3
000510  1f810100  addli r2, r3, 0
000514  3b200200  bneq r4, zero, 8
000518  1f810000  addli r2, r1, 0
00051c  1bb29100  slli r4, r3, 9
000520  9bb29000  slli r5, r1, 9
000524  1bc37101  srli r6, r3, 23
000528  1bc57001  srli r10, r1, 23
00052c  13020200  seteq r4, r4, zero
000530  93820200  seteq r5, r5, zero
000534  1b03f30f  andi r6, r6, 255
000538  1b05f50f  andi r10, r10, 255
00053c  1b73f30f  setlti r6, r6, 255
000540  1b75f50f  setlti r10, r10, 255
000544  17124300  or r4, r6, r4
000548  97125500  or r5, r10, r5
00054c  17025200  and r4, r4, r5
000550  37660210  beq r4, zero, 8600
000554  3bf60110  bneq r3, zero, 8604
000558  37a00000  beq r1, zero, 8
00055c  9f800100  addli r1, r3, 0
000560  93612006  setle.f r3, zero, r2
000564  13620106  setle.f r4, r2, zero
000568  97013200  and r3, r4, r3
00056c  3ba00100  bneq r3, zero, 8
000570  9f000100  addli r1, r2, 0
000574  ef4d8900  loads.w r27, 8(r18)
000578  1f810000  addli r2, r1, 0
00057c  93e11d04  setlt.f r3, r27, r1
000580  3ba00100  bneq r3, zero, 8
000584  1f810d00  addli r2, r27, 0
000588  9bb19d00  slli r3, r27, 9
00058c  1bb29000  slli r4, r1, 9
000590  9bc27d01  srli r5, r27, 23
000594  1bc37001  srli r6, r1, 23
000598  93810100  seteq r3, r3, zero
00059c  13020200  seteq r4, r4, zero
0005a0  9b82f20f  andi r5, r5, 255
0005a4  1b03f30f  andi r6, r6, 255
0005a8  9bf2f20f  setlti r5, r5, 255
0005ac  1b73f30f  setlti r6, r6, 255
0005b0  97913200  or r3, r5, r3
0005b4  17124300  or r4, r6, r4
0005b8  97013200  and r3, r4, r3
0005bc  37850110  beq r3, zero, 8512
0005c0  3b950010  bneq r1, zero, 8516
0005c4  37a00d00  beq r27, zero, 8
0005c8  9f8d0000  addli r27, r1, 0
0005cc  93602006  setle.f r1, zero, r2
0005d0  93610106  setle.f r3, r2, zero
0005d4  e706cffc  storeli.w r12, -408(r30)
0005d8  67070ffd  storeli.w r16, -400(r30)
0005dc  97801100  and r1, r3, r1
0005e0  3ba00000  bneq r1, zero, 8
0005e4  9f0d0100  addli r27, r2, 0
0005e8  6f42c903  loads.w r4, 60(r18)
0005ec  6f4ec900  loads.w r28, 12(r18)
0005f0  6f460901  loads.w r12, 16(r18)
0005f4  6f4a4901  loads.w r20, 20(r18)
0005f8  ef408901  loads.w r1, 24(r18)
0005fc  6f41c901  loads.w r2, 28(r18)
000600  ef480902  loads.w r17, 32(r18)
000604  ef414902  loads.w r3, 36(r18)
000608  6f478902  loads.w r14, 40(r18)
00060c  6f48c902  loads.w r16, 44(r18)
000610  6f450903  loads.w r10, 48(r18)
000614  6f434903  loads.w r6, 52(r18)
000618  ef468903  loads.w r13, 56(r18)
00061c  ef4a090d  loads.w r21, 208(r18)
000620  ef49890d  loads.w r19, 216(r18)
000624  9f820d00  addli r5, r27, 0
000628  e746bffc  storeli.w r11, -404(r30)
00062c  6747fffc  storeli.w r15, -396(r30)
000630  e74f4ffa  storeli.w r4, -516(r30)
000634  6f420904  loads.w r4, 64(r18)
000638  136bbe05  setlt.f r22, r28, r27
00063c  e7084ffc  storeli.w r4, -376(r30)
000640  6f424904  loads.w r4, 68(r18)
000644  e7484ffc  storeli.w r4, -372(r30)
000648  6f428904  loads.w r4, 72(r18)
00064c  67004ffc  storeli.w r4, -512(r30)
000650  6f42c904  loads.w r4, 76(r18)
000654  67094ffc  storeli.w r4, -368(r30)
000658  6f420905  loads.w r4, 80(r18)
00065c  67404ffc  storeli.w r4, -508(r30)
000660  6f424905  loads.w r4, 84(r18)
000664  67494ffc  storeli.w r4, -364(r30)
000668  6f428905  loads.w r4, 88(r18)
00066c  e7004ffc  storeli.w r4, -504(r30)
000670  6f42c905  loads.w r4, 92(r18)
000674  e7094ffc  storeli.w r4, -360(r30)
000678  6f420906  loads.w r4, 96(r18)
00067c  e7404ffc  storeli.w r4, -500(r30)
000680  6f424906  loads.w r4, 100(r18)
000684  e7494ffc  storeli.w r4, -356(r30)
000688  6f428906  loads.w r4, 104(r18)
00068c  67014ffc  storeli.w r4, -496(r30)
000690  6f42c906  loads.w r4, 108(r18)
000694  670a4ffc  storeli.w r4, -352(r30)
000698  6f420907  loads.w r4, 112(r18)
00069c  67414ffc  storeli.w r4, -492(r30)
0006a0  6f424907  loads.w r4, 116(r18)
0006a4  674a4ffc  storeli.w r4, -348(r30)
0006a8  6f428907  loads.w r4, 120(r18)
0006ac  e7014ffc  storeli.w r4, -488(r30)
0006b0  6f42c907  loads.w r4, 124(r18)
0006b4  e70a4ffc  storeli.w r4, -344(r30)
0006b8  6f420908  loads.w r4, 128(r18)
0006bc  e7414ffc  storeli.w r4, -484(r30)
0006c0  6f424908  loads.w r4, 132(r18)
0006c4  e74a4ffc  storeli.w r4, -340(r30)
0006c8  6f428908  loads.w r4, 136(r18)
0006cc  67024ffc  storeli.w r4, -480(r30)
0006d0  6f42c908  loads.w r4, 140(r18)
0006d4  670b4ffc  storeli.w r4, -336(r30)
0006d8  6f420909  loads.w r4, 144(r18)
0006dc  67424ffc  storeli.w r4, -476(r30)
0006e0  6f424909  loads.w r4, 148(r18)
0006e4  674b4ffc  storeli.w r4, -332(r30)
0006e8  6f428909  loads.w r4, 152(r18)
0006ec  e7024ffc  storeli.w r4, -472(r30)
0006f0  6f42c909  loads.w r4, 156(r18)
0006f4  e70b4ffc  storeli.w r4, -328(r30)
0006f8  6f42090a  loads.w r4, 160(r18)
0006fc  e7424ffc  storeli.w r4, -468(r30)
000700  6f42490a  loads.w r4, 164(r18)
000704  e74b4ffc  storeli.w r4, -324(r30)
000708  6f42890a  loads.w r4, 168(r18)
00070c  67034ffc  storeli.w r4, -464(r30)
000710  6f42c90a  loads.w r4, 172(r18)
000714  670c4ffc  storeli.w r4, -320(r30)
000718  6f42090b  loads.w r4, 176(r18)
00071c  67434ffc  storeli.w r4, -460(r30)
000720  6f42490b  loads.w r4, 180(r18)
000724  674c4ffc  storeli.w r4, -316(r30)
000728  6f42890b  loads.w r4, 184(r18)
00072c  e7034ffc  storeli.w r4, -456(r30)
000730  6f42c90b  loads.w r4, 188(r18)
000734  67044ffc  storeli.w r4, -448(r30)
000738  6f42090c  loads.w r4, 192(r18)
00073c  67444ffc  storeli.w r4, -444(r30)
000740  6f42490c  loads.w r4, 196(r18)
000744  e70c4ffc  storeli.w r4, -312(r30)
000748  6f42890c  loads.w r4, 200(r18)
00074c  e7044ffc  storeli.w r4, -440(r30)
000750  6f42c90c  loads.w r4, 204(r18)
000754  e74c4ffc  storeli.w r4, -308(r30)
000758  6f42490d  loads.w r4, 212(r18)
00075c  674d4ffc  storeli.w r4, -300(r30)
000760  6f42c90d  loads.w r4, 220(r18)
000764  e70d4ffc  storeli.w r4, -296(r30)
000768  6f42090e  loads.w r4, 224(r18)
00076c  e7444ffc  storeli.w r4, -436(r30)
000770  6f42490e  loads.w r4, 228(r18)
000774  e74d4ffc  storeli.w r4, -292(r30)
000778  6f42890e  loads.w r4, 232(r18)
00077c  67054ffc  storeli.w r4, -432(r30)
000780  6f42c90e  loads.w r4, 236(r18)
000784  67454ffc  storeli.w r4, -428(r30)
000788  6f42090f  loads.w r4, 240(r18)
00078c  e7054ffc  storeli.w r4, -424(r30)
000790  6f42490f  loads.w r4, 244(r18)
000794  e7454ffc  storeli.w r4, -420(r30)
000798  6f42890f  loads.w r4, 248(r18)
00079c  67064ffc  storeli.w r4, -416(r30)
0007a0  6f42c90f  loads.w r4, 252(r18)
0007a4  67464ffc  storeli.w r4, -412(r30)
0007a8  3b200b00  bneq r22, zero, 8
0007ac  9f020e00  addli r5, r28, 0
0007b0  1b3b9e00  slli r22, r28, 9
0007b4  9bb79d00  slli r15, r27, 9
0007b8  1b427e01  srli r4, r28, 23
0007bc  9bc57d01  srli r11, r27, 23
0007c0  130b0b00  seteq r22, r22, zero
0007c4  93870700  seteq r15, r15, zero
0007c8  1b02f20f  andi r4, r4, 255
0007cc  9b85f50f  andi r11, r11, 255
0007d0  1b72f20f  setlti r4, r4, 255
0007d4  9bf5f50f  setlti r11, r11, 255
0007d8  17126201  or r4, r4, r22
0007dc  9795f500  or r11, r11, r15
0007e0  17824500  and r4, r11, r4
0007e4  b73c020e  beq r4, zero, 7980
0007e8  bbcc0d0e  bneq r27, zero, 7984
0007ec  37200e00  beq r28, zero, 8
0007f0  1f8e0d00  addli r28, r27, 0
0007f4  13625006  setle.f r4, zero, r5
0007f8  93e50206  setle.f r11, r5, zero
0007fc  17824500  and r4, r11, r4
000800  3b200200  bneq r4, zero, 8
000804  1f8e0200  addli r28, r5, 0
000808  1362c605  setlt.f r4, r12, r28
00080c  e30d0ffc  loadli.w r27,  -512(r30)
000810  9f020e00  addli r5, r28, 0
000814  670d3ffd  storeli.w r19, -304(r30)
000818  e7435ffd  storeli.w r21, -452(r30)
00081c  3b200200  bneq r4, zero, 8
000820  9f020600  addli r5, r12, 0
000824  1b329600  slli r4, r12, 9
000828  9b359e00  slli r11, r28, 9
00082c  9b477601  srli r15, r12, 23
000830  1b4b7e01  srli r22, r28, 23
000834  e30aeffb  loadli.w r21,  -528(r30)
000838  e3492ffc  loadli.w r19,  -492(r30)
00083c  13020200  seteq r4, r4, zero
000840  93850500  seteq r11, r11, zero
000844  9b87f70f  andi r15, r15, 255
000848  1b0bfb0f  andi r22, r22, 255
00084c  9bf7f70f  setlti r15, r15, 255
000850  1b7bfb0f  setlti r22, r22, 255
000854  17924700  or r4, r15, r4
000858  9715bb00  or r11, r22, r11
00085c  17824500  and r4, r11, r4
000860  371b020e  beq r4, zero, 7876
000864  3b2b0e0e  bneq r28, zero, 7880
000868  37200600  beq r12, zero, 8
00086c  1f060e00  addli r12, r28, 0
000870  13625006  setle.f r4, zero, r5
000874  93e50206  setle.f r11, r5, zero
000878  17824500  and r4, r11, r4
00087c  3b200200  bneq r4, zero, 8
000880  1f860200  addli r12, r5, 0
000884  1362ca04  setlt.f r4, r20, r12
000888  9f020600  addli r5, r12, 0
00088c  3b200200  bneq r4, zero, 8
000890  9f020a00  addli r5, r20, 0
000894  1b329a00  slli r4, r20, 9
000898  9b359600  slli r11, r12, 9
00089c  9b477a01  srli r15, r20, 23
0008a0  1b4b7601  srli r22, r12, 23
0008a4  13020200  seteq r4, r4, zero
0008a8  93850500  seteq r11, r11, zero
0008ac  9b87f70f  andi r15, r15, 255
0008b0  1b0bfb0f  andi r22, r22, 255
0008b4  9bf7f70f  setlti r15, r15, 255
0008b8  1b7bfb0f  setlti r22, r22, 255
0008bc  17924700  or r4, r15, r4
0008c0  9715bb00  or r11, r22, r11
0008c4  17824500  and r4, r11, r4
0008c8  b749020e  beq r4, zero, 7792
0008cc  630b2ffc  loadli.w r22,  -496(r30)
0008d0  bb59060e  bneq r12, zero, 7796
0008d4  37200a00  beq r20, zero, 8
0008d8  1f0a0600  addli r20, r12, 0
0008dc  13625006  setle.f r4, zero, r5
0008e0  93e50206  setle.f r11, r5, zero
0008e4  17824500  and r4, r11, r4
0008e8  3b200200  bneq r4, zero, 8
0008ec  1f8a0200  addli r20, r5, 0
0008f0  13e24005  setlt.f r4, r1, r20
0008f4  9f020a00  addli r5, r20, 0
0008f8  3b200200  bneq r4, zero, 8
0008fc  9f820000  addli r5, r1, 0
000900  1bb29000  slli r4, r1, 9
000904  9b359a00  slli r11, r20, 9
000908  1bc67001  srli r12, r1, 23
00090c  9b477a01  srli r15, r20, 23
000910  13020200  seteq r4, r4, zero
000914  93850500  seteq r11, r11, zero
000918  1b06f60f  andi r12, r12, 255
00091c  9b87f70f  andi r15, r15, 255
000920  1b76f60f  setlti r12, r12, 255
000924  9bf7f70f  setlti r15, r15, 255
000928  17124600  or r4, r12, r4
00092c  9795b700  or r11, r15, r11
000930  17824500  and r4, r11, r4
000934  3778020e  beq r4, zero, 7708
000938  bb080a0e  bneq r20, zero, 7712
00093c  37a00000  beq r1, zero, 8
000940  9f000a00  addli r1, r20, 0
000944  13625006  setle.f r4, zero, r5
000948  93e50206  setle.f r11, r5, zero
00094c  17824500  and r4, r11, r4
000950  3b200200  bneq r4, zero, 8
000954  9f800200  addli r1, r5, 0
000958  13621104  setlt.f r4, r2, r1
00095c  634a0ffc  loadli.w r20,  -508(r30)
000960  9f820000  addli r5, r1, 0
000964  3b200200  bneq r4, zero, 8
000968  9f020100  addli r5, r2, 0
00096c  1b329100  slli r4, r2, 9
000970  9bb59000  slli r11, r1, 9
000974  1b467101  srli r12, r2, 23
000978  9bc77001  srli r15, r1, 23
00097c  13020200  seteq r4, r4, zero
000980  93850500  seteq r11, r11, zero
000984  1b06f60f  andi r12, r12, 255
000988  9b87f70f  andi r15, r15, 255
00098c  1b76f60f  setlti r12, r12, 255
000990  9bf7f70f  setlti r15, r15, 255
000994  17124600  or r4, r12, r4
000998  9795b700  or r11, r15, r11
00099c  17824500  and r4, r11, r4
0009a0  3717020e  beq r4, zero, 7620
0009a4  e347fffb  loadli.w r15,  -516(r30)
0009a8  3ba7000e  bneq r1, zero, 7624
0009ac  37200100  beq r2, zero, 8
0009b0  1f810000  addli r2, r1, 0
0009b4  93605006  setle.f r1, zero, r5
0009b8  13e20206  setle.f r4, r5, zero
0009bc  97001200  and r1, r4, r1
0009c0  3ba00000  bneq r1, zero, 8
0009c4  1f810200  addli r2, r5, 0
0009c8  13e22804  setlt.f r4, r17, r2
0009cc  9f000100  addli r1, r2, 0
0009d0  3b200200  bneq r4, zero, 8
0009d4  9f800800  addli r1, r17, 0
0009d8  1bb29800  slli r4, r17, 9
0009dc  9b329100  slli r5, r2, 9
0009e0  9bc57801  srli r11, r17, 23
0009e4  1b467101  srli r12, r2, 23
0009e8  13020200  seteq r4, r4, zero
0009ec  93820200  seteq r5, r5, zero
0009f0  9b85f50f  andi r11, r11, 255
0009f4  1b06f60f  andi r12, r12, 255
0009f8  9bf5f50f  setlti r11, r11, 255
0009fc  1b76f60f  setlti r12, r12, 255
000a00  17924500  or r4, r11, r4
000a04  97125600  or r5, r12, r5
000a08  17824200  and r4, r5, r4
000a0c  b745020e  beq r4, zero, 7536
000a10  63465ffc  loadli.w r12,  -468(r30)
000a14  bb55010e  bneq r2, zero, 7540
000a18  37a00800  beq r17, zero, 8
000a1c  9f080100  addli r17, r2, 0
000a20  13611006  setle.f r2, zero, r1
000a24  13e20006  setle.f r4, r1, zero
000a28  17012200  and r2, r4, r2
000a2c  3b200100  bneq r2, zero, 8
000a30  9f880000  addli r17, r1, 0
000a34  13e11105  setlt.f r2, r3, r17
000a38  9f800800  addli r1, r17, 0
000a3c  3b200100  bneq r2, zero, 8
000a40  9f800100  addli r1, r3, 0
000a44  1bb19100  slli r2, r3, 9
000a48  1bb29800  slli r4, r17, 9
000a4c  9bc27101  srli r5, r3, 23
000a50  9bc57801  srli r11, r17, 23
000a54  13010100  seteq r2, r2, zero
000a58  13020200  seteq r4, r4, zero
000a5c  9b82f20f  andi r5, r5, 255
000a60  9b85f50f  andi r11, r11, 255
000a64  9bf2f20f  setlti r5, r5, 255
000a68  9bf5f50f  setlti r11, r11, 255
000a6c  17912200  or r2, r5, r2
000a70  17924500  or r4, r11, r4
000a74  17012200  and r2, r4, r2
000a78  3774010e  beq r2, zero, 7452
000a7c  bb84080e  bneq r17, zero, 7456
000a80  37a00100  beq r3, zero, 8
000a84  9f810800  addli r3, r17, 0
000a88  13611006  setle.f r2, zero, r1
000a8c  13e20006  setle.f r4, r1, zero
000a90  17012200  and r2, r4, r2
000a94  3b200100  bneq r2, zero, 8
000a98  9f810000  addli r3, r1, 0
000a9c  13613704  setlt.f r2, r14, r3
000aa0  e3081ffc  loadli.w r17,  -504(r30)
000aa4  9f800100  addli r1, r3, 0
000aa8  3b200100  bneq r2, zero, 8
000aac  9f000700  addli r1, r14, 0
000ab0  1b319700  slli r2, r14, 9
000ab4  1bb29100  slli r4, r3, 9
000ab8  9b427701  srli r5, r14, 23
000abc  9bc57101  srli r11, r3, 23
000ac0  13010100  seteq r2, r2, zero
000ac4  13020200  seteq r4, r4, zero
000ac8  9b82f20f  andi r5, r5, 255
000acc  9b85f50f  andi r11, r11, 255
000ad0  9bf2f20f  setlti r5, r5, 255
000ad4  9bf5f50f  setlti r11, r11, 255
000ad8  17912200  or r2, r5, r2
000adc  17924500  or r4, r11, r4
000ae0  17012200  and r2, r4, r2
000ae4  3713010e  beq r2, zero, 7364
000ae8  634e4ffc  loadli.w r28,  -476(r30)
000aec  3ba3010e  bneq r3, zero, 7368
000af0  37200700  beq r14, zero, 8
000af4  1f870100  addli r14, r3, 0
000af8  13611006  setle.f r2, zero, r1
000afc  93e10006  setle.f r3, r1, zero
000b00  17812100  and r2, r3, r2
000b04  3b200100  bneq r2, zero, 8
000b08  1f870000  addli r14, r1, 0
000b0c  1361e804  setlt.f r2, r16, r14
000b10  9f000700  addli r1, r14, 0
000b14  3b200100  bneq r2, zero, 8
000b18  9f000800  addli r1, r16, 0
000b1c  1b319800  slli r2, r16, 9
000b20  9b319700  slli r3, r14, 9
000b24  1b427801  srli r4, r16, 23
000b28  9b427701  srli r5, r14, 23
000b2c  13010100  seteq r2, r2, zero
000b30  93810100  seteq r3, r3, zero
000b34  1b02f20f  andi r4, r4, 255
000b38  9b82f20f  andi r5, r5, 255
000b3c  1b72f20f  setlti r4, r4, 255
000b40  9bf2f20f  setlti r5, r5, 255
000b44  17112200  or r2, r4, r2
000b48  97913200  or r3, r5, r3
000b4c  17812100  and r2, r3, r2
000b50  b741010e  beq r2, zero, 7280
000b54  bb51070e  bneq r14, zero, 7284
000b58  37200800  beq r16, zero, 8
000b5c  1f080700  addli r16, r14, 0
000b60  13611006  setle.f r2, zero, r1
000b64  93e10006  setle.f r3, r1, zero
000b68  17812100  and r2, r3, r2
000b6c  3b200100  bneq r2, zero, 8
000b70  1f880000  addli r16, r1, 0
000b74  13610505  setlt.f r2, r10, r16
000b78  63075ffc  loadli.w r14,  -472(r30)
000b7c  9f000800  addli r1, r16, 0
000b80  3b200100  bneq r2, zero, 8
000b84  9f000500  addli r1, r10, 0
000b88  1b319500  slli r2, r10, 9
000b8c  9b319800  slli r3, r16, 9
000b90  1b427501  srli r4, r10, 23
000b94  9b427801  srli r5, r16, 23
000b98  13010100  seteq r2, r2, zero
000b9c  93810100  seteq r3, r3, zero
000ba0  1b02f20f  andi r4, r4, 255
000ba4  9b82f20f  andi r5, r5, 255
000ba8  1b72f20f  setlti r4, r4, 255
000bac  9bf2f20f  setlti r5, r5, 255
000bb0  17112200  or r2, r4, r2
000bb4  97913200  or r3, r5, r3
000bb8  17812100  and r2, r3, r2
000bbc  3760010e  beq r2, zero, 7192
000bc0  3b70080e  bneq r16, zero, 7196
000bc4  37200500  beq r10, zero, 8
000bc8  1f050800  addli r10, r16, 0
000bcc  13611006  setle.f r2, zero, r1
000bd0  93e10006  setle.f r3, r1, zero
000bd4  17812100  and r2, r3, r2
000bd8  3b200100  bneq r2, zero, 8
000bdc  1f850000  addli r10, r1, 0
000be0  1361a304  setlt.f r2, r6, r10
000be4  6308effc  loadli.w r16,  -400(r30)
000be8  9f000500  addli r1, r10, 0
000bec  3b200100  bneq r2, zero, 8
000bf0  9f000300  addli r1, r6, 0
000bf4  1b319300  slli r2, r6, 9
000bf8  9b319500  slli r3, r10, 9
000bfc  1b427301  srli r4, r6, 23
000c00  9b427501  srli r5, r10, 23
000c04  13010100  seteq r2, r2, zero
000c08  93810100  seteq r3, r3, zero
000c0c  1b02f20f  andi r4, r4, 255
000c10  9b82f20f  andi r5, r5, 255
000c14  1b72f20f  setlti r4, r4, 255
000c18  9bf2f20f  setlti r5, r5, 255
000c1c  17112200  or r2, r4, r2
000c20  97913200  or r3, r5, r3
000c24  17812100  and r2, r3, r2
000c28  370f010c  beq r2, zero, 7104
000c2c  3b1f050c  bneq r10, zero, 7108
000c30  37200300  beq r6, zero, 8
000c34  1f030500  addli r6, r10, 0
000c38  13611006  setle.f r2, zero, r1
000c3c  93e10006  setle.f r3, r1, zero
000c40  17812100  and r2, r3, r2
000c44  3b200100  bneq r2, zero, 8
000c48  1f830000  addli r6, r1, 0
000c4c  13e16604  setlt.f r2, r13, r6
000c50  63054ffc  loadli.w r10,  -480(r30)
000c54  9f000300  addli r1, r6, 0
000c58  3b200100  bneq r2, zero, 8
000c5c  9f800600  addli r1, r13, 0
000c60  1bb19600  slli r2, r13, 9
000c64  9b319300  slli r3, r6, 9
000c68  1bc27601  srli r4, r13, 23
000c6c  9b427301  srli r5, r6, 23
000c70  13010100  seteq r2, r2, zero
000c74  93810100  seteq r3, r3, zero
000c78  1b02f20f  andi r4, r4, 255
000c7c  9b82f20f  andi r5, r5, 255
000c80  1b72f20f  setlti r4, r4, 255
000c84  9bf2f20f  setlti r5, r5, 255
000c88  17112200  or r2, r4, r2
000c8c  97913200  or r3, r5, r3
000c90  17812100  and r2, r3, r2
000c94  b72d010c  beq r2, zero, 7016
000c98  bb3d030c  bneq r6, zero, 7020
000c9c  37a00600  beq r13, zero, 8
000ca0  9f060300  addli r13, r6, 0
000ca4  13611006  setle.f r2, zero, r1
000ca8  93e10006  setle.f r3, r1, zero
000cac  17812100  and r2, r3, r2
000cb0  3b200100  bneq r2, zero, 8
000cb4  9f860000  addli r13, r1, 0
000cb8  13e1d704  setlt.f r2, r15, r13
000cbc  63431ffc  loadli.w r6,  -500(r30)
000cc0  9f800600  addli r1, r13, 0
000cc4  3b200100  bneq r2, zero, 8
000cc8  9f800700  addli r1, r15, 0
000ccc  1bb19700  slli r2, r15, 9
000cd0  9bb19600  slli r3, r13, 9
000cd4  1bc27701  srli r4, r15, 23
000cd8  9bc27601  srli r5, r13, 23
000cdc  13010100  seteq r2, r2, zero
000ce0  93810100  seteq r3, r3, zero
000ce4  1b02f20f  andi r4, r4, 255
000ce8  9b82f20f  andi r5, r5, 255
000cec  1b72f20f  setlti r4, r4, 255
000cf0  9bf2f20f  setlti r5, r5, 255
000cf4  17112200  or r2, r4, r2
000cf8  97913200  or r3, r5, r3
000cfc  17812100  and r2, r3, r2
000d00  374c010c  beq r2, zero, 6928
000d04  63021ffd  loadli.w r4,  -376(r30)
000d08  3bdc060c  bneq r13, zero, 6932
000d0c  37a00700  beq r15, zero, 8
000d10  9f870600  addli r15, r13, 0
000d14  13611006  setle.f r2, zero, r1
000d18  93e10006  setle.f r3, r1, zero
000d1c  17812100  and r2, r3, r2
000d20  3b200100  bneq r2, zero, 8
000d24  9f870000  addli r15, r1, 0
000d28  1361f204  setlt.f r2, r4, r15
000d2c  e3463ffc  loadli.w r13,  -484(r30)
000d30  9f800700  addli r1, r15, 0
000d34  3b200100  bneq r2, zero, 8
000d38  9f000200  addli r1, r4, 0
000d3c  1b319200  slli r2, r4, 9
000d40  9bb19700  slli r3, r15, 9
000d44  1b427201  srli r4, r4, 23
000d48  9bc27701  srli r5, r15, 23
000d4c  13010100  seteq r2, r2, zero
000d50  93810100  seteq r3, r3, zero
000d54  1b02f20f  andi r4, r4, 255
000d58  9b82f20f  andi r5, r5, 255
000d5c  1b72f20f  setlti r4, r4, 255
000d60  9bf2f20f  setlti r5, r5, 255
000d64  17112200  or r2, r4, r2
000d68  97913200  or r3, r5, r3
000d6c  17812100  and r2, r3, r2
000d70  b76a010c  beq r2, zero, 6840
000d74  63421ffd  loadli.w r4,  -372(r30)
000d78  bbfa070c  bneq r15, zero, 6844
000d7c  e3021ffd  loadli.w r5,  -376(r30)
000d80  37a00200  beq r5, zero, 8
000d84  9f820700  addli r5, r15, 0
000d88  13611006  setle.f r2, zero, r1
000d8c  93e10006  setle.f r3, r1, zero
000d90  17812100  and r2, r3, r2
000d94  3b200100  bneq r2, zero, 8
000d98  9f820000  addli r5, r1, 0
000d9c  13615204  setlt.f r2, r4, r5
000da0  9f800200  addli r1, r5, 0
000da4  3b200100  bneq r2, zero, 8
000da8  9f000200  addli r1, r4, 0
000dac  1b319200  slli r2, r4, 9
000db0  9bb19200  slli r3, r5, 9
000db4  1b427201  srli r4, r4, 23
000db8  9f870200  addli r15, r5, 0
000dbc  9bc27201  srli r5, r5, 23
000dc0  13010100  seteq r2, r2, zero
000dc4  93810100  seteq r3, r3, zero
000dc8  1b02f20f  andi r4, r4, 255
000dcc  9b82f20f  andi r5, r5, 255
000dd0  1b72f20f  setlti r4, r4, 255
000dd4  9bf2f20f  setlti r5, r5, 255
000dd8  17112200  or r2, r4, r2
000ddc  97913200  or r3, r5, r3
000de0  17812100  and r2, r3, r2
000de4  3b200100  bneq r2, zero, 8
000de8  ab00c07f  lui r1, 523264
000dec  9f050700  addli r11, r14, 0
000df0  37a00700  beq r15, zero, 8
000df4  9f870000  addli r15, r1, 0
000df8  e3421ffd  loadli.w r5,  -372(r30)
000dfc  1f070800  addli r14, r16, 0
000e00  37a00200  beq r5, zero, 8
000e04  9f820700  addli r5, r15, 0
000e08  13611006  setle.f r2, zero, r1
000e0c  93e10006  setle.f r3, r1, zero
000e10  1f080600  addli r16, r12, 0
000e14  17812100  and r2, r3, r2
000e18  3b200100  bneq r2, zero, 8
000e1c  9f820000  addli r5, r1, 0
000e20  13e15d04  setlt.f r2, r27, r5
000e24  6346effc  loadli.w r12,  -396(r30)
000e28  9f800200  addli r1, r5, 0
000e2c  3b200100  bneq r2, zero, 8
000e30  9f800d00  addli r1, r27, 0
000e34  1bb19d00  slli r2, r27, 9
000e38  9bb19200  slli r3, r5, 9
000e3c  1bc27d01  srli r4, r27, 23
000e40  9f870200  addli r15, r5, 0
000e44  9bc27201  srli r5, r5, 23
000e48  13010100  seteq r2, r2, zero
000e4c  93810100  seteq r3, r3, zero
000e50  1b02f20f  andi r4, r4, 255
000e54  9b82f20f  andi r5, r5, 255
000e58  1b72f20f  setlti r4, r4, 255
000e5c  9bf2f20f  setlti r5, r5, 255
000e60  17112200  or r2, r4, r2
000e64  97913200  or r3, r5, r3
000e68  17812100  and r2, r3, r2
000e6c  3767010c  beq r2, zero, 6616
000e70  63022ffd  loadli.w r4,  -368(r30)
000e74  3bf7070c  bneq r15, zero, 6620
000e78  37a00d00  beq r27, zero, 8
000e7c  9f8d0700  addli r27, r15, 0
000e80  13611006  setle.f r2, zero, r1
000e84  93e10006  setle.f r3, r1, zero
000e88  17812100  and r2, r3, r2
000e8c  3b200100  bneq r2, zero, 8
000e90  9f8d0000  addli r27, r1, 0
000e94  1361b205  setlt.f r2, r4, r27
000e98  9f800d00  addli r1, r27, 0
000e9c  9f070600  addli r15, r12, 0
000ea0  3b200100  bneq r2, zero, 8
000ea4  9f000200  addli r1, r4, 0
000ea8  1b319200  slli r2, r4, 9
000eac  9bb19d00  slli r3, r27, 9
000eb0  1b427201  srli r4, r4, 23
000eb4  9bc27d01  srli r5, r27, 23
000eb8  1f060800  addli r12, r16, 0
000ebc  13010100  seteq r2, r2, zero
000ec0  93810100  seteq r3, r3, zero
000ec4  1b02f20f  andi r4, r4, 255
000ec8  9b82f20f  andi r5, r5, 255
000ecc  1b72f20f  setlti r4, r4, 255
000ed0  9bf2f20f  setlti r5, r5, 255
000ed4  17112200  or r2, r4, r2
000ed8  97913200  or r3, r5, r3
000edc  17812100  and r2, r3, r2
000ee0  3b200100  bneq r2, zero, 8
000ee4  ab00c07f  lui r1, 523264
000ee8  1f080700  addli r16, r14, 0
000eec  37a00d00  beq r27, zero, 8
000ef0  9f8d0000  addli r27, r1, 0
000ef4  e3022ffd  loadli.w r5,  -368(r30)
000ef8  1f870500  addli r14, r11, 0
000efc  37a00200  beq r5, zero, 8
000f00  9f820d00  addli r5, r27, 0
000f04  13611006  setle.f r2, zero, r1
000f08  93e10006  setle.f r3, r1, zero
000f0c  9f050e00  addli r11, r28, 0
000f10  17812100  and r2, r3, r2
000f14  3b200100  bneq r2, zero, 8
000f18  9f820000  addli r5, r1, 0
000f1c  13615a04  setlt.f r2, r20, r5
000f20  9f800200  addli r1, r5, 0
000f24  3b200100  bneq r2, zero, 8
000f28  9f000a00  addli r1, r20, 0
000f2c  1b319a00  slli r2, r20, 9
000f30  9bb19200  slli r3, r5, 9
000f34  1b427a01  srli r4, r20, 23
000f38  9f8d0200  addli r27, r5, 0
000f3c  9bc27201  srli r5, r5, 23
000f40  13010100  seteq r2, r2, zero
000f44  93810100  seteq r3, r3, zero
000f48  1b02f20f  andi r4, r4, 255
000f4c  9b82f20f  andi r5, r5, 255
000f50  1b72f20f  setlti r4, r4, 255
000f54  9bf2f20f  setlti r5, r5, 255
000f58  17112200  or r2, r4, r2
000f5c  97913200  or r3, r5, r3
000f60  17812100  and r2, r3, r2
000f64  b763010c  beq r2, zero, 6392
000f68  63422ffd  loadli.w r4,  -364(r30)
000f6c  bbf30d0c  bneq r27, zero, 6396
000f70  37200a00  beq r20, zero, 8
000f74  1f8a0d00  addli r20, r27, 0
000f78  13611006  setle.f r2, zero, r1
000f7c  93e10006  setle.f r3, r1, zero
000f80  17812100  and r2, r3, r2
000f84  3b200100  bneq r2, zero, 8
000f88  1f8a0000  addli r20, r1, 0
000f8c  13614205  setlt.f r2, r4, r20
000f90  9f000a00  addli r1, r20, 0
000f94  3b200100  bneq r2, zero, 8
000f98  9f000200  addli r1, r4, 0
000f9c  1b319200  slli r2, r4, 9
000fa0  9b319a00  slli r3, r20, 9
000fa4  1b427201  srli r4, r4, 23
000fa8  9b427a01  srli r5, r20, 23
000fac  13010100  seteq r2, r2, zero
000fb0  93810100  seteq r3, r3, zero
000fb4  1b02f20f  andi r4, r4, 255
000fb8  9b82f20f  andi r5, r5, 255
000fbc  1b72f20f  setlti r4, r4, 255
000fc0  9bf2f20f  setlti r5, r5, 255
000fc4  17112200  or r2, r4, r2
000fc8  97913200  or r3, r5, r3
000fcc  17812100  and r2, r3, r2
000fd0  b712010c  beq r2, zero, 6308
000fd4  bb220a0c  bneq r20, zero, 6312
000fd8  e3422ffd  loadli.w r5,  -364(r30)
000fdc  37a00200  beq r5, zero, 8
000fe0  9f020a00  addli r5, r20, 0
000fe4  13611006  setle.f r2, zero, r1
000fe8  93e10006  setle.f r3, r1, zero
000fec  17812100  and r2, r3, r2
000ff0  3b200100  bneq r2, zero, 8
000ff4  9f820000  addli r5, r1, 0
000ff8  13e15804  setlt.f r2, r17, r5
000ffc  9f800200  addli r1, r5, 0
001000  3b200100  bneq r2, zero, 8
001004  9f800800  addli r1, r17, 0
001008  1bb19800  slli r2, r17, 9
00100c  9bb19200  slli r3, r5, 9
001010  1bc27801  srli r4, r17, 23
001014  1f8a0200  addli r20, r5, 0
001018  9bc27201  srli r5, r5, 23
00101c  13010100  seteq r2, r2, zero
001020  93810100  seteq r3, r3, zero
001024  1b02f20f  andi r4, r4, 255
001028  9b82f20f  andi r5, r5, 255
00102c  1b72f20f  setlti r4, r4, 255
001030  9bf2f20f  setlti r5, r5, 255
001034  17112200  or r2, r4, r2
001038  97913200  or r3, r5, r3
00103c  17812100  and r2, r3, r2
001040  3731010c  beq r2, zero, 6220
001044  63023ffd  loadli.w r4,  -360(r30)
001048  3b410a0c  bneq r20, zero, 6224
00104c  37a00800  beq r17, zero, 8
001050  9f080a00  addli r17, r20, 0
001054  13611006  setle.f r2, zero, r1
001058  93e10006  setle.f r3, r1, zero
00105c  17812100  and r2, r3, r2
001060  3b200100  bneq r2, zero, 8
001064  9f880000  addli r17, r1, 0
001068  13611205  setlt.f r2, r4, r17
00106c  9f800800  addli r1, r17, 0
001070  3b200100  bneq r2, zero, 8
001074  9f000200  addli r1, r4, 0
001078  1b319200  slli r2, r4, 9
00107c  9bb19800  slli r3, r17, 9
001080  1b427201  srli r4, r4, 23
001084  9bc27801  srli r5, r17, 23
001088  13010100  seteq r2, r2, zero
00108c  93810100  seteq r3, r3, zero
001090  1b02f20f  andi r4, r4, 255
001094  9b82f20f  andi r5, r5, 255
001098  1b72f20f  setlti r4, r4, 255
00109c  9bf2f20f  setlti r5, r5, 255
0010a0  17112200  or r2, r4, r2
0010a4  97913200  or r3, r5, r3
0010a8  17812100  and r2, r3, r2
0010ac  b76f010a  beq r2, zero, 6136
0010b0  bbff080a  bneq r17, zero, 6140
0010b4  e3023ffd  loadli.w r5,  -360(r30)
0010b8  37a00200  beq r5, zero, 8
0010bc  9f820800  addli r5, r17, 0
0010c0  13611006  setle.f r2, zero, r1
0010c4  93e10006  setle.f r3, r1, zero
0010c8  17812100  and r2, r3, r2
0010cc  3b200100  bneq r2, zero, 8
0010d0  9f820000  addli r5, r1, 0
0010d4  13615304  setlt.f r2, r6, r5
0010d8  9f800200  addli r1, r5, 0
0010dc  3b200100  bneq r2, zero, 8
0010e0  9f000300  addli r1, r6, 0
0010e4  1b319300  slli r2, r6, 9
0010e8  9bb19200  slli r3, r5, 9
0010ec  1b427301  srli r4, r6, 23
0010f0  9f880200  addli r17, r5, 0
0010f4  9bc27201  srli r5, r5, 23
0010f8  13010100  seteq r2, r2, zero
0010fc  93810100  seteq r3, r3, zero
001100  1b02f20f  andi r4, r4, 255
001104  9b82f20f  andi r5, r5, 255
001108  1b72f20f  setlti r4, r4, 255
00110c  9bf2f20f  setlti r5, r5, 255
001110  17112200  or r2, r4, r2
001114  97913200  or r3, r5, r3
001118  17812100  and r2, r3, r2
00111c  b70e010a  beq r2, zero, 6048
001120  63423ffd  loadli.w r4,  -356(r30)
001124  bb9e080a  bneq r17, zero, 6052
001128  37200300  beq r6, zero, 8
00112c  1f830800  addli r6, r17, 0
001130  13611006  setle.f r2, zero, r1
001134  93e10006  setle.f r3, r1, zero
001138  17812100  and r2, r3, r2
00113c  3b200100  bneq r2, zero, 8
001140  1f830000  addli r6, r1, 0
001144  13616204  setlt.f r2, r4, r6
001148  e3083ffc  loadli.w r17,  -488(r30)
00114c  9f000300  addli r1, r6, 0
001150  3b200100  bneq r2, zero, 8
001154  9f000200  addli r1, r4, 0
001158  1b319200  slli r2, r4, 9
00115c  9b319300  slli r3, r6, 9
001160  1b427201  srli r4, r4, 23
001164  9b427301  srli r5, r6, 23
001168  13010100  seteq r2, r2, zero
00116c  93810100  seteq r3, r3, zero
001170  1b02f20f  andi r4, r4, 255
001174  9b82f20f  andi r5, r5, 255
001178  1b72f20f  setlti r4, r4, 255
00117c  9bf2f20f  setlti r5, r5, 255
001180  17112200  or r2, r4, r2
001184  97913200  or r3, r5, r3
001188  17812100  and r2, r3, r2
00118c  372d010a  beq r2, zero, 5960
001190  3b3d030a  bneq r6, zero, 5964
001194  e3423ffd  loadli.w r5,  -356(r30)
001198  37a00200  beq r5, zero, 8
00119c  9f020300  addli r5, r6, 0
0011a0  13611006  setle.f r2, zero, r1
0011a4  93e10006  setle.f r3, r1, zero
0011a8  17812100  and r2, r3, r2
0011ac  3b200100  bneq r2, zero, 8
0011b0  9f820000  addli r5, r1, 0
0011b4  13615b04  setlt.f r2, r22, r5
0011b8  9f800200  addli r1, r5, 0
0011bc  3b200100  bneq r2, zero, 8
0011c0  9f000b00  addli r1, r22, 0
0011c4  1b319b00  slli r2, r22, 9
0011c8  9bb19200  slli r3, r5, 9
0011cc  1b427b01  srli r4, r22, 23
0011d0  1f830200  addli r6, r5, 0
0011d4  9bc27201  srli r5, r5, 23
0011d8  13010100  seteq r2, r2, zero
0011dc  93810100  seteq r3, r3, zero
0011e0  1b02f20f  andi r4, r4, 255
0011e4  9b82f20f  andi r5, r5, 255
0011e8  1b72f20f  setlti r4, r4, 255
0011ec  9bf2f20f  setlti r5, r5, 255
0011f0  17112200  or r2, r4, r2
0011f4  97913200  or r3, r5, r3
0011f8  17812100  and r2, r3, r2
0011fc  b74b010a  beq r2, zero, 5872
001200  63024ffd  loadli.w r4,  -352(r30)
001204  bb5b030a  bneq r6, zero, 5876
001208  37200b00  beq r22, zero, 8
00120c  1f0b0300  addli r22, r6, 0
001210  13611006  setle.f r2, zero, r1
001214  93e10006  setle.f r3, r1, zero
001218  17812100  and r2, r3, r2
00121c  3b200100  bneq r2, zero, 8
001220  1f8b0000  addli r22, r1, 0
001224  13616205  setlt.f r2, r4, r22
001228  9f000b00  addli r1, r22, 0
00122c  3b200100  bneq r2, zero, 8
001230  9f000200  addli r1, r4, 0
001234  1b319200  slli r2, r4, 9
001238  9b319b00  slli r3, r22, 9
00123c  1b427201  srli r4, r4, 23
001240  9b427b01  srli r5, r22, 23
001244  13010100  seteq r2, r2, zero
001248  93810100  seteq r3, r3, zero
00124c  1b02f20f  andi r4, r4, 255
001250  9b82f20f  andi r5, r5, 255
001254  1b72f20f  setlti r4, r4, 255
001258  9bf2f20f  setlti r5, r5, 255
00125c  17112200  or r2, r4, r2
001260  97913200  or r3, r5, r3
001264  17812100  and r2, r3, r2
001268  377a010a  beq r2, zero, 5788
00126c  bb0a0b0a  bneq r22, zero, 5792
001270  e3024ffd  loadli.w r5,  -352(r30)
001274  37a00200  beq r5, zero, 8
001278  9f020b00  addli r5, r22, 0
00127c  13611006  setle.f r2, zero, r1
001280  93e10006  setle.f r3, r1, zero
001284  17812100  and r2, r3, r2
001288  3b200100  bneq r2, zero, 8
00128c  9f820000  addli r5, r1, 0
001290  13e15904  setlt.f r2, r19, r5
001294  634b9ffc  loadli.w r22,  -436(r30)
001298  9f800200  addli r1, r5, 0
00129c  3b200100  bneq r2, zero, 8
0012a0  9f800900  addli r1, r19, 0
0012a4  1bb19900  slli r2, r19, 9
0012a8  9bb19200  slli r3, r5, 9
0012ac  1bc27901  srli r4, r19, 23
0012b0  1f830200  addli r6, r5, 0
0012b4  9bc27201  srli r5, r5, 23
0012b8  13010100  seteq r2, r2, zero
0012bc  93810100  seteq r3, r3, zero
0012c0  1b02f20f  andi r4, r4, 255
0012c4  9b82f20f  andi r5, r5, 255
0012c8  1b72f20f  setlti r4, r4, 255
0012cc  9bf2f20f  setlti r5, r5, 255
0012d0  17112200  or r2, r4, r2
0012d4  97913200  or r3, r5, r3
0012d8  17812100  and r2, r3, r2
0012dc  3709010a  beq r2, zero, 5696
0012e0  63424ffd  loadli.w r4,  -348(r30)
0012e4  3b19030a  bneq r6, zero, 5700
0012e8  37a00900  beq r19, zero, 8
0012ec  9f090300  addli r19, r6, 0
0012f0  13611006  setle.f r2, zero, r1
0012f4  93e10006  setle.f r3, r1, zero
0012f8  17812100  and r2, r3, r2
0012fc  3b200100  bneq r2, zero, 8
001300  9f890000  addli r19, r1, 0
001304  13613205  setlt.f r2, r4, r19
001308  9f800900  addli r1, r19, 0
00130c  1f030b00  addli r6, r22, 0
001310  3b200100  bneq r2, zero, 8
001314  9f000200  addli r1, r4, 0
001318  1b319200  slli r2, r4, 9
00131c  9bb19900  slli r3, r19, 9
001320  1b427201  srli r4, r4, 23
001324  9bc27901  srli r5, r19, 23
001328  13010100  seteq r2, r2, zero
00132c  93810100  seteq r3, r3, zero
001330  1b02f20f  andi r4, r4, 255
001334  9b82f20f  andi r5, r5, 255
001338  1b72f20f  setlti r4, r4, 255
00133c  9bf2f20f  setlti r5, r5, 255
001340  17112200  or r2, r4, r2
001344  97913200  or r3, r5, r3
001348  17812100  and r2, r3, r2
00134c  b727010a  beq r2, zero, 5608
001350  bbb7090a  bneq r19, zero, 5612
001354  e3424ffd  loadli.w r5,  -348(r30)
001358  37a00200  beq r5, zero, 8
00135c  9f820900  addli r5, r19, 0
001360  13611006  setle.f r2, zero, r1
001364  93e10006  setle.f r3, r1, zero
001368  17812100  and r2, r3, r2
00136c  3b200100  bneq r2, zero, 8
001370  9f820000  addli r5, r1, 0
001374  13e15804  setlt.f r2, r17, r5
001378  9f800200  addli r1, r5, 0
00137c  3b200100  bneq r2, zero, 8
001380  9f800800  addli r1, r17, 0
001384  1bb19800  slli r2, r17, 9
001388  9bb19200  slli r3, r5, 9
00138c  1bc27801  srli r4, r17, 23
001390  9f890200  addli r19, r5, 0
001394  9bc27201  srli r5, r5, 23
001398  13010100  seteq r2, r2, zero
00139c  93810100  seteq r3, r3, zero
0013a0  1b02f20f  andi r4, r4, 255
0013a4  9b82f20f  andi r5, r5, 255
0013a8  1b72f20f  setlti r4, r4, 255
0013ac  9bf2f20f  setlti r5, r5, 255
0013b0  17112200  or r2, r4, r2
0013b4  97913200  or r3, r5, r3
0013b8  17812100  and r2, r3, r2
0013bc  3746010a  beq r2, zero, 5520
0013c0  63025ffd  loadli.w r4,  -344(r30)
0013c4  3bd6090a  bneq r19, zero, 5524
0013c8  37a00800  beq r17, zero, 8
0013cc  9f880900  addli r17, r19, 0
0013d0  13611006  setle.f r2, zero, r1
0013d4  93e10006  setle.f r3, r1, zero
0013d8  17812100  and r2, r3, r2
0013dc  3b200100  bneq r2, zero, 8
0013e0  9f880000  addli r17, r1, 0
0013e4  13611205  setlt.f r2, r4, r17
0013e8  9f800800  addli r1, r17, 0
0013ec  3b200100  bneq r2, zero, 8
0013f0  9f000200  addli r1, r4, 0
0013f4  1b319200  slli r2, r4, 9
0013f8  9bb19800  slli r3, r17, 9
0013fc  1b427201  srli r4, r4, 23
001400  9bc27801  srli r5, r17, 23
001404  13010100  seteq r2, r2, zero
001408  93810100  seteq r3, r3, zero
00140c  1b02f20f  andi r4, r4, 255
001410  9b82f20f  andi r5, r5, 255
001414  1b72f20f  setlti r4, r4, 255
001418  9bf2f20f  setlti r5, r5, 255
00141c  17112200  or r2, r4, r2
001420  97913200  or r3, r5, r3
001424  17812100  and r2, r3, r2
001428  b774010a  beq r2, zero, 5436
00142c  3b85080a  bneq r17, zero, 5440
001430  e3025ffd  loadli.w r5,  -344(r30)
001434  37a00200  beq r5, zero, 8
001438  9f820800  addli r5, r17, 0
00143c  13611006  setle.f r2, zero, r1
001440  93e10006  setle.f r3, r1, zero
001444  17812100  and r2, r3, r2
001448  3b200100  bneq r2, zero, 8
00144c  9f820000  addli r5, r1, 0
001450  13e15604  setlt.f r2, r13, r5
001454  630eaffc  loadli.w r28,  -432(r30)
001458  9f800200  addli r1, r5, 0
00145c  3b200100  bneq r2, zero, 8
001460  9f800600  addli r1, r13, 0
001464  1bb19600  slli r2, r13, 9
001468  9bb19200  slli r3, r5, 9
00146c  1bc27601  srli r4, r13, 23
001470  9f890200  addli r19, r5, 0
001474  9bc27201  srli r5, r5, 23
001478  13010100  seteq r2, r2, zero
00147c  93810100  seteq r3, r3, zero
001480  1b02f20f  andi r4, r4, 255
001484  9b82f20f  andi r5, r5, 255
001488  1b72f20f  setlti r4, r4, 255
00148c  9bf2f20f  setlti r5, r5, 255
001490  17112200  or r2, r4, r2
001494  97913200  or r3, r5, r3
001498  17812100  and r2, r3, r2
00149c  b703010a  beq r2, zero, 5344
0014a0  63425ffd  loadli.w r4,  -340(r30)
0014a4  bb93090a  bneq r19, zero, 5348
0014a8  37a00600  beq r13, zero, 8
0014ac  9f860900  addli r13, r19, 0
0014b0  13611006  setle.f r2, zero, r1
0014b4  93e10006  setle.f r3, r1, zero
0014b8  17812100  and r2, r3, r2
0014bc  3b200100  bneq r2, zero, 8
0014c0  9f860000  addli r13, r1, 0
0014c4  1361d204  setlt.f r2, r4, r13
0014c8  9f800600  addli r1, r13, 0
0014cc  9f090e00  addli r19, r28, 0
0014d0  3b200100  bneq r2, zero, 8
0014d4  9f000200  addli r1, r4, 0
0014d8  1b319200  slli r2, r4, 9
0014dc  9bb19600  slli r3, r13, 9
0014e0  1b427201  srli r4, r4, 23
0014e4  9bc27601  srli r5, r13, 23
0014e8  13010100  seteq r2, r2, zero
0014ec  93810100  seteq r3, r3, zero
0014f0  1b02f20f  andi r4, r4, 255
0014f4  9b82f20f  andi r5, r5, 255
0014f8  1b72f20f  setlti r4, r4, 255
0014fc  9bf2f20f  setlti r5, r5, 255
001500  17112200  or r2, r4, r2
001504  97913200  or r3, r5, r3
001508  17812100  and r2, r3, r2
00150c  3722010a  beq r2, zero, 5256
001510  3bb2060a  bneq r13, zero, 5260
001514  e3425ffd  loadli.w r5,  -340(r30)
001518  37a00200  beq r5, zero, 8
00151c  9f820600  addli r5, r13, 0
001520  13611006  setle.f r2, zero, r1
001524  93e10006  setle.f r3, r1, zero
001528  17812100  and r2, r3, r2
00152c  3b200100  bneq r2, zero, 8
001530  9f820000  addli r5, r1, 0
001534  13615504  setlt.f r2, r10, r5
001538  9f800200  addli r1, r5, 0
00153c  3b200100  bneq r2, zero, 8
001540  9f000500  addli r1, r10, 0
001544  1b319500  slli r2, r10, 9
001548  9bb19200  slli r3, r5, 9
00154c  1b427501  srli r4, r10, 23
001550  9f860200  addli r13, r5, 0
001554  9bc27201  srli r5, r5, 23
001558  13010100  seteq r2, r2, zero
00155c  93810100  seteq r3, r3, zero
001560  1b02f20f  andi r4, r4, 255
001564  9b82f20f  andi r5, r5, 255
001568  1b72f20f  setlti r4, r4, 255
00156c  9bf2f20f  setlti r5, r5, 255
001570  17112200  or r2, r4, r2
001574  97913200  or r3, r5, r3
001578  17812100  and r2, r3, r2
00157c  b740010a  beq r2, zero, 5168
001580  63026ffd  loadli.w r4,  -336(r30)
001584  bbd0060a  bneq r13, zero, 5172
001588  37200500  beq r10, zero, 8
00158c  1f850600  addli r10, r13, 0
001590  13611006  setle.f r2, zero, r1
001594  93e10006  setle.f r3, r1, zero
001598  17812100  and r2, r3, r2
00159c  3b200100  bneq r2, zero, 8
0015a0  1f850000  addli r10, r1, 0
0015a4  1361a204  setlt.f r2, r4, r10
0015a8  e3066ffc  loadli.w r13,  -464(r30)
0015ac  9f000500  addli r1, r10, 0
0015b0  3b200100  bneq r2, zero, 8
0015b4  9f000200  addli r1, r4, 0
0015b8  1b319200  slli r2, r4, 9
0015bc  9b319500  slli r3, r10, 9
0015c0  1b427201  srli r4, r4, 23
0015c4  9b427501  srli r5, r10, 23
0015c8  13010100  seteq r2, r2, zero
0015cc  93810100  seteq r3, r3, zero
0015d0  1b02f20f  andi r4, r4, 255
0015d4  9b82f20f  andi r5, r5, 255
0015d8  1b72f20f  setlti r4, r4, 255
0015dc  9bf2f20f  setlti r5, r5, 255
0015e0  17112200  or r2, r4, r2
0015e4  97913200  or r3, r5, r3
0015e8  17812100  and r2, r3, r2
0015ec  376f0108  beq r2, zero, 5080
0015f0  3b7f0508  bneq r10, zero, 5084
0015f4  e3026ffd  loadli.w r5,  -336(r30)
0015f8  37a00200  beq r5, zero, 8
0015fc  9f020500  addli r5, r10, 0
001600  13611006  setle.f r2, zero, r1
001604  93e10006  setle.f r3, r1, zero
001608  17812100  and r2, r3, r2
00160c  3b200100  bneq r2, zero, 8
001610  9f820000  addli r5, r1, 0
001614  13e15504  setlt.f r2, r11, r5
001618  9f800200  addli r1, r5, 0
00161c  3b200100  bneq r2, zero, 8
001620  9f800500  addli r1, r11, 0
001624  1bb19500  slli r2, r11, 9
001628  9bb19200  slli r3, r5, 9
00162c  1bc27501  srli r4, r11, 23
001630  1f850200  addli r10, r5, 0
001634  9bc27201  srli r5, r5, 23
001638  13010100  seteq r2, r2, zero
00163c  93810100  seteq r3, r3, zero
001640  1b02f20f  andi r4, r4, 255
001644  9b82f20f  andi r5, r5, 255
001648  1b72f20f  setlti r4, r4, 255
00164c  9bf2f20f  setlti r5, r5, 255
001650  17112200  or r2, r4, r2
001654  97913200  or r3, r5, r3
001658  17812100  and r2, r3, r2
00165c  370e0108  beq r2, zero, 4992
001660  63426ffd  loadli.w r4,  -332(r30)
001664  3b1e0508  bneq r10, zero, 4996
001668  37a00500  beq r11, zero, 8
00166c  9f050500  addli r11, r10, 0
001670  13611006  setle.f r2, zero, r1
001674  93e10006  setle.f r3, r1, zero
001678  17812100  and r2, r3, r2
00167c  3b200100  bneq r2, zero, 8
001680  9f850000  addli r11, r1, 0
001684  1361b204  setlt.f r2, r4, r11
001688  63057ffc  loadli.w r10,  -456(r30)
00168c  9f800500  addli r1, r11, 0
001690  3b200100  bneq r2, zero, 8
001694  9f000200  addli r1, r4, 0
001698  1b319200  slli r2, r4, 9
00169c  9bb19500  slli r3, r11, 9
0016a0  1b427201  srli r4, r4, 23
0016a4  9bc27501  srli r5, r11, 23
0016a8  13010100  seteq r2, r2, zero
0016ac  93810100  seteq r3, r3, zero
0016b0  1b02f20f  andi r4, r4, 255
0016b4  9b82f20f  andi r5, r5, 255
0016b8  1b72f20f  setlti r4, r4, 255
0016bc  9bf2f20f  setlti r5, r5, 255
0016c0  17112200  or r2, r4, r2
0016c4  97913200  or r3, r5, r3
0016c8  17812100  and r2, r3, r2
0016cc  b72c0108  beq r2, zero, 4904
0016d0  bbbc0508  bneq r11, zero, 4908
0016d4  e3426ffd  loadli.w r5,  -332(r30)
0016d8  37a00200  beq r5, zero, 8
0016dc  9f820500  addli r5, r11, 0
0016e0  13611006  setle.f r2, zero, r1
0016e4  93e10006  setle.f r3, r1, zero
0016e8  17812100  and r2, r3, r2
0016ec  3b200100  bneq r2, zero, 8
0016f0  9f820000  addli r5, r1, 0
0016f4  13615704  setlt.f r2, r14, r5
0016f8  9f800200  addli r1, r5, 0
0016fc  3b200100  bneq r2, zero, 8
001700  9f000700  addli r1, r14, 0
001704  1b319700  slli r2, r14, 9
001708  9bb19200  slli r3, r5, 9
00170c  1b427701  srli r4, r14, 23
001710  9f850200  addli r11, r5, 0
001714  9bc27201  srli r5, r5, 23
001718  13010100  seteq r2, r2, zero
00171c  93810100  seteq r3, r3, zero
001720  1b02f20f  andi r4, r4, 255
001724  9b82f20f  andi r5, r5, 255
001728  1b72f20f  setlti r4, r4, 255
00172c  9bf2f20f  setlti r5, r5, 255
001730  17112200  or r2, r4, r2
001734  97913200  or r3, r5, r3
001738  17812100  and r2, r3, r2
00173c  374b0108  beq r2, zero, 4816
001740  63027ffd  loadli.w r4,  -328(r30)
001744  3bdb0508  bneq r11, zero, 4820
001748  37200700  beq r14, zero, 8
00174c  1f870500  addli r14, r11, 0
001750  13611006  setle.f r2, zero, r1
001754  93e10006  setle.f r3, r1, zero
001758  17812100  and r2, r3, r2
00175c  3b200100  bneq r2, zero, 8
001760  1f870000  addli r14, r1, 0
001764  1361e204  setlt.f r2, r4, r14
001768  e3456ffc  loadli.w r11,  -460(r30)
00176c  9f000700  addli r1, r14, 0
001770  3b200100  bneq r2, zero, 8
001774  9f000200  addli r1, r4, 0
001778  1b319200  slli r2, r4, 9
00177c  9b319700  slli r3, r14, 9
001780  1b427201  srli r4, r4, 23
001784  9b427701  srli r5, r14, 23
001788  13010100  seteq r2, r2, zero
00178c  93810100  seteq r3, r3, zero
001790  1b02f20f  andi r4, r4, 255
001794  9b82f20f  andi r5, r5, 255
001798  1b72f20f  setlti r4, r4, 255
00179c  9bf2f20f  setlti r5, r5, 255
0017a0  17112200  or r2, r4, r2
0017a4  97913200  or r3, r5, r3
0017a8  17812100  and r2, r3, r2
0017ac  b7690108  beq r2, zero, 4728
0017b0  bb790708  bneq r14, zero, 4732
0017b4  e3027ffd  loadli.w r5,  -328(r30)
0017b8  37a00200  beq r5, zero, 8
0017bc  9f020700  addli r5, r14, 0
0017c0  13611006  setle.f r2, zero, r1
0017c4  93e10006  setle.f r3, r1, zero
0017c8  17812100  and r2, r3, r2
0017cc  3b200100  bneq r2, zero, 8
0017d0  9f820000  addli r5, r1, 0
0017d4  13615604  setlt.f r2, r12, r5
0017d8  9f800200  addli r1, r5, 0
0017dc  3b200100  bneq r2, zero, 8
0017e0  9f000600  addli r1, r12, 0
0017e4  1b319600  slli r2, r12, 9
0017e8  9bb19200  slli r3, r5, 9
0017ec  1b427601  srli r4, r12, 23
0017f0  1f870200  addli r14, r5, 0
0017f4  9bc27201  srli r5, r5, 23
0017f8  13010100  seteq r2, r2, zero
0017fc  93810100  seteq r3, r3, zero
001800  1b02f20f  andi r4, r4, 255
001804  9b82f20f  andi r5, r5, 255
001808  1b72f20f  setlti r4, r4, 255
00180c  9bf2f20f  setlti r5, r5, 255
001810  17112200  or r2, r4, r2
001814  97913200  or r3, r5, r3
001818  17812100  and r2, r3, r2
00181c  b7080108  beq r2, zero, 4640
001820  63427ffd  loadli.w r4,  -324(r30)
001824  bb180708  bneq r14, zero, 4644
001828  37200600  beq r12, zero, 8
00182c  1f060700  addli r12, r14, 0
001830  13611006  setle.f r2, zero, r1
001834  93e10006  setle.f r3, r1, zero
001838  17812100  and r2, r3, r2
00183c  3b200100  bneq r2, zero, 8
001840  1f860000  addli r12, r1, 0
001844  1361c204  setlt.f r2, r4, r12
001848  9f000600  addli r1, r12, 0
00184c  3b200100  bneq r2, zero, 8
001850  9f000200  addli r1, r4, 0
001854  1b319200  slli r2, r4, 9
001858  9b319600  slli r3, r12, 9
00185c  1b427201  srli r4, r4, 23
001860  9b427601  srli r5, r12, 23
001864  13010100  seteq r2, r2, zero
001868  93810100  seteq r3, r3, zero
00186c  1b02f20f  andi r4, r4, 255
001870  9b82f20f  andi r5, r5, 255
001874  1b72f20f  setlti r4, r4, 255
001878  9bf2f20f  setlti r5, r5, 255
00187c  17112200  or r2, r4, r2
001880  97913200  or r3, r5, r3
001884  17812100  and r2, r3, r2
001888  37370108  beq r2, zero, 4556
00188c  3b470608  bneq r12, zero, 4560
001890  e3427ffd  loadli.w r5,  -324(r30)
001894  37a00200  beq r5, zero, 8
001898  9f020600  addli r5, r12, 0
00189c  13611006  setle.f r2, zero, r1
0018a0  93e10006  setle.f r3, r1, zero
0018a4  17812100  and r2, r3, r2
0018a8  3b200100  bneq r2, zero, 8
0018ac  9f820000  addli r5, r1, 0
0018b0  13e15604  setlt.f r2, r13, r5
0018b4  9f800200  addli r1, r5, 0
0018b8  3b200100  bneq r2, zero, 8
0018bc  9f800600  addli r1, r13, 0
0018c0  1bb19600  slli r2, r13, 9
0018c4  9bb19200  slli r3, r5, 9
0018c8  1bc27601  srli r4, r13, 23
0018cc  1f860200  addli r12, r5, 0
0018d0  9bc27201  srli r5, r5, 23
0018d4  13010100  seteq r2, r2, zero
0018d8  93810100  seteq r3, r3, zero
0018dc  1b02f20f  andi r4, r4, 255
0018e0  9b82f20f  andi r5, r5, 255
0018e4  1b72f20f  setlti r4, r4, 255
0018e8  9bf2f20f  setlti r5, r5, 255
0018ec  17112200  or r2, r4, r2
0018f0  97913200  or r3, r5, r3
0018f4  17812100  and r2, r3, r2
0018f8  b7550108  beq r2, zero, 4468
0018fc  63028ffd  loadli.w r4,  -320(r30)
001900  bb650608  bneq r12, zero, 4472
001904  37a00600  beq r13, zero, 8
001908  9f060600  addli r13, r12, 0
00190c  13611006  setle.f r2, zero, r1
001910  93e10006  setle.f r3, r1, zero
001914  17812100  and r2, r3, r2
001918  3b200100  bneq r2, zero, 8
00191c  9f860000  addli r13, r1, 0
001920  1361d204  setlt.f r2, r4, r13
001924  9f800600  addli r1, r13, 0
001928  3b200100  bneq r2, zero, 8
00192c  9f000200  addli r1, r4, 0
001930  1b319200  slli r2, r4, 9
001934  9bb19600  slli r3, r13, 9
001938  1b427201  srli r4, r4, 23
00193c  9bc27601  srli r5, r13, 23
001940  13010100  seteq r2, r2, zero
001944  93810100  seteq r3, r3, zero
001948  1b02f20f  andi r4, r4, 255
00194c  9b82f20f  andi r5, r5, 255
001950  1b72f20f  setlti r4, r4, 255
001954  9bf2f20f  setlti r5, r5, 255
001958  17112200  or r2, r4, r2
00195c  97913200  or r3, r5, r3
001960  17812100  and r2, r3, r2
001964  b7040108  beq r2, zero, 4384
001968  bb940608  bneq r13, zero, 4388
00196c  e3028ffd  loadli.w r5,  -320(r30)
001970  37a00200  beq r5, zero, 8
001974  9f820600  addli r5, r13, 0
001978  13611006  setle.f r2, zero, r1
00197c  93e10006  setle.f r3, r1, zero
001980  17812100  and r2, r3, r2
001984  3b200100  bneq r2, zero, 8
001988  9f820000  addli r5, r1, 0
00198c  13e15504  setlt.f r2, r11, r5
001990  9f800200  addli r1, r5, 0
001994  3b200100  bneq r2, zero, 8
001998  9f800500  addli r1, r11, 0
00199c  1bb19500  slli r2, r11, 9
0019a0  9bb19200  slli r3, r5, 9
0019a4  1bc27501  srli r4, r11, 23
0019a8  1f8a0200  addli r20, r5, 0
0019ac  9bc27201  srli r5, r5, 23
0019b0  13010100  seteq r2, r2, zero
0019b4  93810100  seteq r3, r3, zero
0019b8  1b02f20f  andi r4, r4, 255
0019bc  9b82f20f  andi r5, r5, 255
0019c0  1b72f20f  setlti r4, r4, 255
0019c4  9bf2f20f  setlti r5, r5, 255
0019c8  17112200  or r2, r4, r2
0019cc  97913200  or r3, r5, r3
0019d0  17812100  and r2, r3, r2
0019d4  37230108  beq r2, zero, 4296
0019d8  63428ffd  loadli.w r4,  -316(r30)
0019dc  3b330a08  bneq r20, zero, 4300
0019e0  37a00500  beq r11, zero, 8
0019e4  9f050a00  addli r11, r20, 0
0019e8  13611006  setle.f r2, zero, r1
0019ec  93e10006  setle.f r3, r1, zero
0019f0  17812100  and r2, r3, r2
0019f4  3b200100  bneq r2, zero, 8
0019f8  9f850000  addli r11, r1, 0
0019fc  1361b204  setlt.f r2, r4, r11
001a00  9f800500  addli r1, r11, 0
001a04  3b200100  bneq r2, zero, 8
001a08  9f000200  addli r1, r4, 0
001a0c  1b319200  slli r2, r4, 9
001a10  9bb19500  slli r3, r11, 9
001a14  1b427201  srli r4, r4, 23
001a18  9bc27501  srli r5, r11, 23
001a1c  13010100  seteq r2, r2, zero
001a20  93810100  seteq r3, r3, zero
001a24  1b02f20f  andi r4, r4, 255
001a28  9b82f20f  andi r5, r5, 255
001a2c  1b72f20f  setlti r4, r4, 255
001a30  9bf2f20f  setlti r5, r5, 255
001a34  17112200  or r2, r4, r2
001a38  97913200  or r3, r5, r3
001a3c  17812100  and r2, r3, r2
001a40  b7510108  beq r2, zero, 4212
001a44  bbe10508  bneq r11, zero, 4216
001a48  e3428ffd  loadli.w r5,  -316(r30)
001a4c  37a00200  beq r5, zero, 8
001a50  9f820500  addli r5, r11, 0
001a54  13611006  setle.f r2, zero, r1
001a58  93e10006  setle.f r3, r1, zero
001a5c  17812100  and r2, r3, r2
001a60  3b200100  bneq r2, zero, 8
001a64  9f820000  addli r5, r1, 0
001a68  13615504  setlt.f r2, r10, r5
001a6c  e3058ffc  loadli.w r11,  -448(r30)
001a70  9f800200  addli r1, r5, 0
001a74  3b200100  bneq r2, zero, 8
001a78  9f000500  addli r1, r10, 0
001a7c  1b319500  slli r2, r10, 9
001a80  9bb19200  slli r3, r5, 9
001a84  1b427501  srli r4, r10, 23
001a88  1f8b0200  addli r22, r5, 0
001a8c  9bc27201  srli r5, r5, 23
001a90  13010100  seteq r2, r2, zero
001a94  93810100  seteq r3, r3, zero
001a98  1b02f20f  andi r4, r4, 255
001a9c  9b82f20f  andi r5, r5, 255
001aa0  1b72f20f  setlti r4, r4, 255
001aa4  9bf2f20f  setlti r5, r5, 255
001aa8  17112200  or r2, r4, r2
001aac  97913200  or r3, r5, r3
001ab0  17812100  and r2, r3, r2
001ab4  37600108  beq r2, zero, 4120
001ab8  3b700b08  bneq r22, zero, 4124
001abc  37200500  beq r10, zero, 8
001ac0  1f050b00  addli r10, r22, 0
001ac4  13611006  setle.f r2, zero, r1
001ac8  93e10006  setle.f r3, r1, zero
001acc  17812100  and r2, r3, r2
001ad0  3b200100  bneq r2, zero, 8
001ad4  1f850000  addli r10, r1, 0
001ad8  13e1a504  setlt.f r2, r11, r10
001adc  9f000500  addli r1, r10, 0
001ae0  3b200100  bneq r2, zero, 8
001ae4  9f800500  addli r1, r11, 0
001ae8  1bb19500  slli r2, r11, 9
001aec  9b319500  slli r3, r10, 9
001af0  1bc27501  srli r4, r11, 23
001af4  9b427501  srli r5, r10, 23
001af8  13010100  seteq r2, r2, zero
001afc  93810100  seteq r3, r3, zero
001b00  1b02f20f  andi r4, r4, 255
001b04  9b82f20f  andi r5, r5, 255
001b08  1b72f20f  setlti r4, r4, 255
001b0c  9bf2f20f  setlti r5, r5, 255
001b10  17112200  or r2, r4, r2
001b14  97913200  or r3, r5, r3
001b18  17812100  and r2, r3, r2
001b1c  371f0106  beq r2, zero, 4036
001b20  3b2f0506  bneq r10, zero, 4040
001b24  37a00500  beq r11, zero, 8
001b28  9f050500  addli r11, r10, 0
001b2c  13611006  setle.f r2, zero, r1
001b30  93e10006  setle.f r3, r1, zero
001b34  17812100  and r2, r3, r2
001b38  3b200100  bneq r2, zero, 8
001b3c  9f850000  addli r11, r1, 0
001b40  63458ffc  loadli.w r10,  -444(r30)
001b44  9f800500  addli r1, r11, 0
001b48  1361b504  setlt.f r2, r10, r11
001b4c  3b200100  bneq r2, zero, 8
001b50  9f000500  addli r1, r10, 0
001b54  1b319500  slli r2, r10, 9
001b58  9bb19500  slli r3, r11, 9
001b5c  1b427501  srli r4, r10, 23
001b60  9bc27501  srli r5, r11, 23
001b64  13010100  seteq r2, r2, zero
001b68  93810100  seteq r3, r3, zero
001b6c  1b02f20f  andi r4, r4, 255
001b70  9b82f20f  andi r5, r5, 255
001b74  1b72f20f  setlti r4, r4, 255
001b78  9bf2f20f  setlti r5, r5, 255
001b7c  17112200  or r2, r4, r2
001b80  97913200  or r3, r5, r3
001b84  17812100  and r2, r3, r2
001b88  b73d0106  beq r2, zero, 3948
001b8c  63029ffd  loadli.w r4,  -312(r30)
001b90  bbcd0506  bneq r11, zero, 3952
001b94  37200500  beq r10, zero, 8
001b98  1f850500  addli r10, r11, 0
001b9c  13611006  setle.f r2, zero, r1
001ba0  93e10006  setle.f r3, r1, zero
001ba4  17812100  and r2, r3, r2
001ba8  3b200100  bneq r2, zero, 8
001bac  1f850000  addli r10, r1, 0
001bb0  1361a204  setlt.f r2, r4, r10
001bb4  e348bffc  loadli.w r17,  -420(r30)
001bb8  9f000500  addli r1, r10, 0
001bbc  3b200100  bneq r2, zero, 8
001bc0  9f000200  addli r1, r4, 0
001bc4  1b319200  slli r2, r4, 9
001bc8  9b319500  slli r3, r10, 9
001bcc  1b427201  srli r4, r4, 23
001bd0  9b427501  srli r5, r10, 23
001bd4  9f060500  addli r13, r10, 0
001bd8  13010100  seteq r2, r2, zero
001bdc  93810100  seteq r3, r3, zero
001be0  1b02f20f  andi r4, r4, 255
001be4  9b82f20f  andi r5, r5, 255
001be8  1b72f20f  setlti r4, r4, 255
001bec  9bf2f20f  setlti r5, r5, 255
001bf0  17112200  or r2, r4, r2
001bf4  97913200  or r3, r5, r3
001bf8  17812100  and r2, r3, r2
001bfc  3b200100  bneq r2, zero, 8
001c00  ab00c07f  lui r1, 523264
001c04  634e7ffc  loadli.w r28,  -452(r30)
001c08  37a00600  beq r13, zero, 8
001c0c  9f860000  addli r13, r1, 0
001c10  e30dbffc  loadli.w r27,  -424(r30)
001c14  e3029ffd  loadli.w r5,  -312(r30)
001c18  37a00200  beq r5, zero, 8
001c1c  9f820600  addli r5, r13, 0
001c20  13611006  setle.f r2, zero, r1
001c24  93e10006  setle.f r3, r1, zero
001c28  6307cffc  loadli.w r14,  -416(r30)
001c2c  17812100  and r2, r3, r2
001c30  3b200100  bneq r2, zero, 8
001c34  9f820000  addli r5, r1, 0
001c38  630b9ffc  loadli.w r22,  -440(r30)
001c3c  6345affc  loadli.w r10,  -428(r30)
001c40  9f800200  addli r1, r5, 0
001c44  9f860800  addli r13, r17, 0
001c48  13615b04  setlt.f r2, r22, r5
001c4c  3b200100  bneq r2, zero, 8
001c50  9f000b00  addli r1, r22, 0
001c54  1b319b00  slli r2, r22, 9
001c58  9bb19200  slli r3, r5, 9
001c5c  1b427b01  srli r4, r22, 23
001c60  9f880200  addli r17, r5, 0
001c64  9bc27201  srli r5, r5, 23
001c68  13010100  seteq r2, r2, zero
001c6c  93810100  seteq r3, r3, zero
001c70  1b02f20f  andi r4, r4, 255
001c74  9b82f20f  andi r5, r5, 255
001c78  1b72f20f  setlti r4, r4, 255
001c7c  9bf2f20f  setlti r5, r5, 255
001c80  17112200  or r2, r4, r2
001c84  97913200  or r3, r5, r3
001c88  17812100  and r2, r3, r2
001c8c  370a0106  beq r2, zero, 3712
001c90  63429ffd  loadli.w r4,  -308(r30)
001c94  3b9a0806  bneq r17, zero, 3716
001c98  37200b00  beq r22, zero, 8
001c9c  1f8b0800  addli r22, r17, 0
001ca0  13611006  setle.f r2, zero, r1
001ca4  93e10006  setle.f r3, r1, zero
001ca8  17812100  and r2, r3, r2
001cac  3b200100  bneq r2, zero, 8
001cb0  1f8b0000  addli r22, r1, 0
001cb4  13616205  setlt.f r2, r4, r22
001cb8  9f000b00  addli r1, r22, 0
001cbc  9f080500  addli r17, r10, 0
001cc0  3b200100  bneq r2, zero, 8
001cc4  9f000200  addli r1, r4, 0
001cc8  1b319200  slli r2, r4, 9
001ccc  9b319b00  slli r3, r22, 9
001cd0  1b427201  srli r4, r4, 23
001cd4  9b427b01  srli r5, r22, 23
001cd8  1f050700  addli r10, r14, 0
001cdc  13010100  seteq r2, r2, zero
001ce0  93810100  seteq r3, r3, zero
001ce4  1b02f20f  andi r4, r4, 255
001ce8  9b82f20f  andi r5, r5, 255
001cec  1b72f20f  setlti r4, r4, 255
001cf0  9bf2f20f  setlti r5, r5, 255
001cf4  17112200  or r2, r4, r2
001cf8  97913200  or r3, r5, r3
001cfc  17812100  and r2, r3, r2
001d00  3b200100  bneq r2, zero, 8
001d04  ab00c07f  lui r1, 523264
001d08  1f870d00  addli r14, r27, 0
001d0c  37200b00  beq r22, zero, 8
001d10  1f8b0000  addli r22, r1, 0
001d14  e3429ffd  loadli.w r5,  -308(r30)
001d18  9f0d0e00  addli r27, r28, 0
001d1c  37a00200  beq r5, zero, 8
001d20  9f020b00  addli r5, r22, 0
001d24  13611006  setle.f r2, zero, r1
001d28  93e10006  setle.f r3, r1, zero
001d2c  17812100  and r2, r3, r2
001d30  3b200100  bneq r2, zero, 8
001d34  9f820000  addli r5, r1, 0
001d38  13e15d04  setlt.f r2, r27, r5
001d3c  9f800200  addli r1, r5, 0
001d40  3b200100  bneq r2, zero, 8
001d44  9f800d00  addli r1, r27, 0
001d48  1bb19d00  slli r2, r27, 9
001d4c  9bb19200  slli r3, r5, 9
001d50  1bc27d01  srli r4, r27, 23
001d54  1f8e0200  addli r28, r5, 0
001d58  9bc27201  srli r5, r5, 23
001d5c  13010100  seteq r2, r2, zero
001d60  93810100  seteq r3, r3, zero
001d64  1b02f20f  andi r4, r4, 255
001d68  9b82f20f  andi r5, r5, 255
001d6c  1b72f20f  setlti r4, r4, 255
001d70  9bf2f20f  setlti r5, r5, 255
001d74  17112200  or r2, r4, r2
001d78  97913200  or r3, r5, r3
001d7c  17812100  and r2, r3, r2
001d80  b7160106  beq r2, zero, 3492
001d84  6342affd  loadli.w r4,  -300(r30)
001d88  bb260e06  bneq r28, zero, 3496
001d8c  37a00d00  beq r27, zero, 8
001d90  9f0d0e00  addli r27, r28, 0
001d94  13611006  setle.f r2, zero, r1
001d98  93e10006  setle.f r3, r1, zero
001d9c  17812100  and r2, r3, r2
001da0  3b200100  bneq r2, zero, 8
001da4  9f8d0000  addli r27, r1, 0
001da8  1361b205  setlt.f r2, r4, r27
001dac  9f800d00  addli r1, r27, 0
001db0  3b200100  bneq r2, zero, 8
001db4  9f000200  addli r1, r4, 0
001db8  1b319200  slli r2, r4, 9
001dbc  9bb19d00  slli r3, r27, 9
001dc0  1b427201  srli r4, r4, 23
001dc4  9bc27d01  srli r5, r27, 23
001dc8  13010100  seteq r2, r2, zero
001dcc  93810100  seteq r3, r3, zero
001dd0  1b02f20f  andi r4, r4, 255
001dd4  9b82f20f  andi r5, r5, 255
001dd8  1b72f20f  setlti r4, r4, 255
001ddc  9bf2f20f  setlti r5, r5, 255
001de0  17112200  or r2, r4, r2
001de4  97913200  or r3, r5, r3
001de8  17812100  and r2, r3, r2
001dec  37450106  beq r2, zero, 3408
001df0  3bd50d06  bneq r27, zero, 3412
001df4  e342affd  loadli.w r5,  -300(r30)
001df8  37a00200  beq r5, zero, 8
001dfc  9f820d00  addli r5, r27, 0
001e00  13611006  setle.f r2, zero, r1
001e04  93e10006  setle.f r3, r1, zero
001e08  17812100  and r2, r3, r2
001e0c  3b200100  bneq r2, zero, 8
001e10  9f820000  addli r5, r1, 0
001e14  e301affd  loadli.w r3,  -304(r30)
001e18  e34deffb  loadli.w r27,  -524(r30)
001e1c  9f800200  addli r1, r5, 0
001e20  13e15104  setlt.f r2, r3, r5
001e24  3b200100  bneq r2, zero, 8
001e28  9f800100  addli r1, r3, 0
001e2c  1bb19100  slli r2, r3, 9
001e30  1f820100  addli r4, r3, 0
001e34  9bb19200  slli r3, r5, 9
001e38  1f8e0200  addli r28, r5, 0
001e3c  9bc27201  srli r5, r5, 23
001e40  13010100  seteq r2, r2, zero
001e44  93810100  seteq r3, r3, zero
001e48  1b427201  srli r4, r4, 23
001e4c  9b82f20f  andi r5, r5, 255
001e50  1b02f20f  andi r4, r4, 255
001e54  9bf2f20f  setlti r5, r5, 255
001e58  1b72f20f  setlti r4, r4, 255
001e5c  17112200  or r2, r4, r2
001e60  97913200  or r3, r5, r3
001e64  17812100  and r2, r3, r2
001e68  b7330106  beq r2, zero, 3308
001e6c  6302bffd  loadli.w r4,  -296(r30)
001e70  bb430e06  bneq r28, zero, 3312
001e74  e301affd  loadli.w r3,  -304(r30)
001e78  37a00100  beq r3, zero, 8
001e7c  9f010e00  addli r3, r28, 0
001e80  9f820100  addli r5, r3, 0
001e84  13611006  setle.f r2, zero, r1
001e88  93e10006  setle.f r3, r1, zero
001e8c  17812100  and r2, r3, r2
001e90  9f810200  addli r3, r5, 0
001e94  3b200100  bneq r2, zero, 8
001e98  9f810000  addli r3, r1, 0
001e9c  13613204  setlt.f r2, r4, r3
001ea0  9f800100  addli r1, r3, 0
001ea4  1f8e0d00  addli r28, r27, 0
001ea8  3b200100  bneq r2, zero, 8
001eac  9f000200  addli r1, r4, 0
001eb0  9f820100  addli r5, r3, 0
001eb4  1b319200  slli r2, r4, 9
001eb8  1b427201  srli r4, r4, 23
001ebc  9bb19200  slli r3, r5, 9
001ec0  13010100  seteq r2, r2, zero
001ec4  9f8d0200  addli r27, r5, 0
001ec8  9bc27201  srli r5, r5, 23
001ecc  1b02f20f  andi r4, r4, 255
001ed0  93810100  seteq r3, r3, zero
001ed4  9b82f20f  andi r5, r5, 255
001ed8  1b72f20f  setlti r4, r4, 255
001edc  9bf2f20f  setlti r5, r5, 255
001ee0  17112200  or r2, r4, r2
001ee4  97913200  or r3, r5, r3
001ee8  17812100  and r2, r3, r2
001eec  37120106  beq r2, zero, 3204
001ef0  3ba20d06  bneq r27, zero, 3208
001ef4  e302bffd  loadli.w r5,  -296(r30)
001ef8  37a00200  beq r5, zero, 8
001efc  9f820d00  addli r5, r27, 0
001f00  13611006  setle.f r2, zero, r1
001f04  93e10006  setle.f r3, r1, zero
001f08  17812100  and r2, r3, r2
001f0c  3b200100  bneq r2, zero, 8
001f10  9f820000  addli r5, r1, 0
001f14  13615304  setlt.f r2, r6, r5
001f18  9f800200  addli r1, r5, 0
001f1c  3b200100  bneq r2, zero, 8
001f20  9f000300  addli r1, r6, 0
001f24  1b319300  slli r2, r6, 9
001f28  9bb19200  slli r3, r5, 9
001f2c  1b427301  srli r4, r6, 23
001f30  9f8d0200  addli r27, r5, 0
001f34  9bc27201  srli r5, r5, 23
001f38  13010100  seteq r2, r2, zero
001f3c  93810100  seteq r3, r3, zero
001f40  1b02f20f  andi r4, r4, 255
001f44  9b82f20f  andi r5, r5, 255
001f48  1b72f20f  setlti r4, r4, 255
001f4c  9bf2f20f  setlti r5, r5, 255
001f50  17112200  or r2, r4, r2
001f54  97913200  or r3, r5, r3
001f58  17812100  and r2, r3, r2
001f5c  b7300106  beq r2, zero, 3116
001f60  6342bffd  loadli.w r4,  -292(r30)
001f64  bbc00d06  bneq r27, zero, 3120
001f68  37200300  beq r6, zero, 8
001f6c  1f830d00  addli r6, r27, 0
001f70  13611006  setle.f r2, zero, r1
001f74  93e10006  setle.f r3, r1, zero
001f78  17812100  and r2, r3, r2
001f7c  3b200100  bneq r2, zero, 8
001f80  1f830000  addli r6, r1, 0
001f84  13616204  setlt.f r2, r4, r6
001f88  9f000300  addli r1, r6, 0
001f8c  3b200100  bneq r2, zero, 8
001f90  9f000200  addli r1, r4, 0
001f94  1b319200  slli r2, r4, 9
001f98  9b319300  slli r3, r6, 9
001f9c  1b427201  srli r4, r4, 23
001fa0  9b427301  srli r5, r6, 23
001fa4  13010100  seteq r2, r2, zero
001fa8  93810100  seteq r3, r3, zero
001fac  1b02f20f  andi r4, r4, 255
001fb0  9b82f20f  andi r5, r5, 255
001fb4  1b72f20f  setlti r4, r4, 255
001fb8  9bf2f20f  setlti r5, r5, 255
001fbc  17112200  or r2, r4, r2
001fc0  97913200  or r3, r5, r3
001fc4  17812100  and r2, r3, r2
001fc8  3b200100  bneq r2, zero, 8
001fcc  ab00c07f  lui r1, 523264
001fd0  e345dffc  loadli.w r11,  -404(r30)
001fd4  6306dffc  loadli.w r12,  -408(r30)
001fd8  37200300  beq r6, zero, 8
001fdc  1f830000  addli r6, r1, 0
001fe0  1f010300  addli r2, r6, 0
001fe4  63035f00  loadli.w r6,  40(r30)
001fe8  e342bffd  loadli.w r5,  -292(r30)
001fec  37a00200  beq r5, zero, 8
001ff0  9f020100  addli r5, r2, 0
001ff4  13611006  setle.f r2, zero, r1
001ff8  93e10006  setle.f r3, r1, zero
001ffc  634a4f00  loadli.w r20,  36(r30)
002000  17812100  and r2, r3, r2
002004  3b200100  bneq r2, zero, 8
002008  9f820000  addli r5, r1, 0
00200c  13e15904  setlt.f r2, r19, r5
002010  630bfffb  loadli.w r22,  -520(r30)
002014  9f800200  addli r1, r5, 0
002018  3b200100  bneq r2, zero, 8
00201c  9f800900  addli r1, r19, 0
002020  1bb19900  slli r2, r19, 9
002024  9bb19200  slli r3, r5, 9
002028  1bc27901  srli r4, r19, 23
00202c  9f8d0200  addli r27, r5, 0
002030  9bc27201  srli r5, r5, 23
002034  13010100  seteq r2, r2, zero
002038  93810100  seteq r3, r3, zero
00203c  1b02f20f  andi r4, r4, 255
002040  9b82f20f  andi r5, r5, 255
002044  1b72f20f  setlti r4, r4, 255
002048  9bf2f20f  setlti r5, r5, 255
00204c  17112200  or r2, r4, r2
002050  97913200  or r3, r5, r3
002054  17812100  and r2, r3, r2
002058  372d0104  beq r2, zero, 2888
00205c  3bbd0d04  bneq r27, zero, 2892
002060  37a00900  beq r19, zero, 8
002064  9f890d00  addli r19, r27, 0
002068  13611006  setle.f r2, zero, r1
00206c  93e10006  setle.f r3, r1, zero
002070  17812100  and r2, r3, r2
002074  3b200100  bneq r2, zero, 8
002078  9f890000  addli r19, r1, 0
00207c  13e13805  setlt.f r2, r17, r19
002080  9f800900  addli r1, r19, 0
002084  9f0d0b00  addli r27, r22, 0
002088  3b200100  bneq r2, zero, 8
00208c  9f800800  addli r1, r17, 0
002090  1bb19800  slli r2, r17, 9
002094  9bb19900  slli r3, r19, 9
002098  1bc27801  srli r4, r17, 23
00209c  9bc27901  srli r5, r19, 23
0020a0  1f0b0a00  addli r22, r20, 0
0020a4  13010100  seteq r2, r2, zero
0020a8  93810100  seteq r3, r3, zero
0020ac  1b02f20f  andi r4, r4, 255
0020b0  9b82f20f  andi r5, r5, 255
0020b4  1b72f20f  setlti r4, r4, 255
0020b8  9bf2f20f  setlti r5, r5, 255
0020bc  17112200  or r2, r4, r2
0020c0  97913200  or r3, r5, r3
0020c4  17812100  and r2, r3, r2
0020c8  b73b0104  beq r2, zero, 2796
0020cc  1f0a0300  addli r20, r6, 0
0020d0  bbcb0904  bneq r19, zero, 2800
0020d4  6343cffc  loadli.w r6,  -412(r30)
0020d8  37a00800  beq r17, zero, 8
0020dc  9f880900  addli r17, r19, 0
0020e0  13611006  setle.f r2, zero, r1
0020e4  93e10006  setle.f r3, r1, zero
0020e8  17812100  and r2, r3, r2
0020ec  3b200100  bneq r2, zero, 8
0020f0  9f880000  addli r17, r1, 0
0020f4  13611705  setlt.f r2, r14, r17
0020f8  9f800800  addli r1, r17, 0
0020fc  3b200100  bneq r2, zero, 8
002100  9f000700  addli r1, r14, 0
002104  1b319700  slli r2, r14, 9
002108  9bb19800  slli r3, r17, 9
00210c  1b427701  srli r4, r14, 23
002110  9bc27801  srli r5, r17, 23
002114  13010100  seteq r2, r2, zero
002118  93810100  seteq r3, r3, zero
00211c  1b02f20f  andi r4, r4, 255
002120  9b82f20f  andi r5, r5, 255
002124  1b72f20f  setlti r4, r4, 255
002128  9bf2f20f  setlti r5, r5, 255
00212c  17112200  or r2, r4, r2
002130  97913200  or r3, r5, r3
002134  17812100  and r2, r3, r2
002138  376a0104  beq r2, zero, 2712
00213c  3bfa0804  bneq r17, zero, 2716
002140  37200700  beq r14, zero, 8
002144  1f870800  addli r14, r17, 0
002148  13611006  setle.f r2, zero, r1
00214c  93e10006  setle.f r3, r1, zero
002150  17812100  and r2, r3, r2
002154  3b200100  bneq r2, zero, 8
002158  1f870000  addli r14, r1, 0
00215c  13e1e604  setlt.f r2, r13, r14
002160  9f000700  addli r1, r14, 0
002164  3b200100  bneq r2, zero, 8
002168  9f800600  addli r1, r13, 0
00216c  1bb19600  slli r2, r13, 9
002170  9b319700  slli r3, r14, 9
002174  1bc27601  srli r4, r13, 23
002178  9b427701  srli r5, r14, 23
00217c  13010100  seteq r2, r2, zero
002180  93810100  seteq r3, r3, zero
002184  1b02f20f  andi r4, r4, 255
002188  9b82f20f  andi r5, r5, 255
00218c  1b72f20f  setlti r4, r4, 255
002190  9bf2f20f  setlti r5, r5, 255
002194  17112200  or r2, r4, r2
002198  97913200  or r3, r5, r3
00219c  17812100  and r2, r3, r2
0021a0  37190104  beq r2, zero, 2628
0021a4  3b290704  bneq r14, zero, 2632
0021a8  37a00600  beq r13, zero, 8
0021ac  9f060700  addli r13, r14, 0
0021b0  13611006  setle.f r2, zero, r1
0021b4  93e10006  setle.f r3, r1, zero
0021b8  17812100  and r2, r3, r2
0021bc  3b200100  bneq r2, zero, 8
0021c0  9f860000  addli r13, r1, 0
0021c4  1361d504  setlt.f r2, r10, r13
0021c8  9f800600  addli r1, r13, 0
0021cc  3b200100  bneq r2, zero, 8
0021d0  9f000500  addli r1, r10, 0
0021d4  1b319500  slli r2, r10, 9
0021d8  9bb19600  slli r3, r13, 9
0021dc  1b427501  srli r4, r10, 23
0021e0  9bc27601  srli r5, r13, 23
0021e4  13010100  seteq r2, r2, zero
0021e8  93810100  seteq r3, r3, zero
0021ec  1b02f20f  andi r4, r4, 255
0021f0  9b82f20f  andi r5, r5, 255
0021f4  1b72f20f  setlti r4, r4, 255
0021f8  9bf2f20f  setlti r5, r5, 255
0021fc  17112200  or r2, r4, r2
002200  97913200  or r3, r5, r3
002204  17812100  and r2, r3, r2
002208  b7470104  beq r2, zero, 2544
00220c  bbd70604  bneq r13, zero, 2548
002210  37200500  beq r10, zero, 8
002214  1f850600  addli r10, r13, 0
002218  13611006  setle.f r2, zero, r1
00221c  93e10006  setle.f r3, r1, zero
002220  17812100  and r2, r3, r2
002224  3b200100  bneq r2, zero, 8
002228  1f850000  addli r10, r1, 0
00222c  1361a304  setlt.f r2, r6, r10
002230  9f000500  addli r1, r10, 0
002234  3b200100  bneq r2, zero, 8
002238  9f000300  addli r1, r6, 0
00223c  1b319300  slli r2, r6, 9
002240  9b319500  slli r3, r10, 9
002244  1b427301  srli r4, r6, 23
002248  9b427501  srli r5, r10, 23
00224c  13010100  seteq r2, r2, zero
002250  93810100  seteq r3, r3, zero
002254  1b02f20f  andi r4, r4, 255
002258  9b82f20f  andi r5, r5, 255
00225c  1b72f20f  setlti r4, r4, 255
002260  9bf2f20f  setlti r5, r5, 255
002264  17112200  or r2, r4, r2
002268  97913200  or r3, r5, r3
00226c  17812100  and r2, r3, r2
002270  37760104  beq r2, zero, 2460
002274  bb060504  bneq r10, zero, 2464
002278  37200300  beq r6, zero, 8
00227c  1f030500  addli r6, r10, 0
002280  13611006  setle.f r2, zero, r1
002284  93e10006  setle.f r3, r1, zero
002288  17812100  and r2, r3, r2
00228c  3b200100  bneq r2, zero, 8
002290  1f830000  addli r6, r1, 0
002294  73606900  stores.w r6, 0(r18)
002298  00a00300  mfence { lm, sm, gm }
00229c  80210e04  csr_set csr3, r28
0022a0  00d00100  sync_group
0022a4  ef400900  loads.w r1, 0(r18)
0022a8  1bb19000  slli r2, r1, 9
0022ac  13621d06  setle.f r4, r26, r1
0022b0  93e2a007  setle.f r5, r1, r26
0022b4  9bc17001  srli r3, r1, 23
0022b8  13030100  seteq r6, r2, zero
0022bc  9b81f10f  andi r3, r3, 255
0022c0  9bf1f10f  setlti r3, r3, 255
0022c4  17824200  and r4, r5, r4
0022c8  97926100  or r5, r3, r6
0022cc  2b03803f  lui r6, 260096
0022d0  17055200  and r10, r4, r5
0022d4  ab02803f  lui r5, 260096
0022d8  3b300500  bneq r10, zero, 12
0022dc  8b621818  sub.f.rn r5, r16, r1
0022e0  8f820200  exp.f.rn r5, r5
0022e4  3b300500  bneq r10, zero, 12
0022e8  0be31718  sub.f.rn r6, r15, r1
0022ec  0f030300  exp.f.rn r6, r6
0022f0  8b625620  mul.f.rn r5, r12, r5
0022f4  0be36520  mul.f.rn r6, r11, r6
0022f8  1f050000  addli r10, zero, 0
0022fc  db030000  j 28
002300  8b65d820  mul.f.rn r11, r16, r13
002304  0b66f620  mul.f.rn r12, r12, r15
002308  1f450500  addli r10, r10, 4
00230c  8be2b210  add.f.rn r5, r5, r11
002310  0b63c310  add.f.rn r6, r6, r12
002314  b7539501  beq r10, r25, 244
002318  0b96ab10  add.s r12, r23, r10
00231c  8b16ac10  add.s r13, r24, r10
002320  eb354600  load.hu r11, 4(r12)
002324  6bb74600  load.hu r14, 4(r13)
002328  b3950520  hfloat2float.rn r11, r11
00232c  33170720  hfloat2float.rn r14, r14
002330  8be5e510  add.f.rn r11, r11, r14
002334  1bb89500  slli r16, r11, 9
002338  1367bd06  setle.f r14, r26, r11
00233c  93e7a507  setle.f r15, r11, r26
002340  9bc87501  srli r17, r11, 23
002344  13080800  seteq r16, r16, zero
002348  9b88f80f  andi r17, r17, 255
00234c  9789e700  and r19, r15, r14
002350  9bf7f80f  setlti r15, r17, 255
002354  6b376600  load.hu r14, 6(r12)
002358  17960701  or r12, r15, r16
00235c  ebb76600  load.hu r15, 6(r13)
002360  ab06803f  lui r13, 260096
002364  1788c900  and r16, r19, r12
002368  2b06803f  lui r12, 260096
00236c  3b700800  bneq r16, zero, 28
002370  8b66bd18  sub.f.rn r13, r26, r11
002374  0be8b518  sub.f.rn r16, r11, r11
002378  8f860600  exp.f.rn r13, r13
00237c  0f080800  exp.f.rn r16, r16
002380  8be60620  mul.f.rn r13, r13, zero
002384  8b66d810  add.f.rn r13, r16, r13
002388  33170720  hfloat2float.rn r14, r14
00238c  b3970720  hfloat2float.rn r15, r15
002390  0b67f710  add.f.rn r14, r14, r15
002394  9b379700  slli r15, r14, 9
002398  9368ed06  setle.f r17, r26, r14
00239c  9369a707  setle.f r19, r14, r26
0023a0  1b487701  srli r16, r14, 23
0023a4  93870700  seteq r15, r15, zero
0023a8  1b08f80f  andi r16, r16, 255
0023ac  1b78f80f  setlti r16, r16, 255
0023b0  9717f800  or r15, r16, r15
0023b4  17881901  and r16, r19, r17
0023b8  1708f800  and r16, r16, r15
0023bc  ab07803f  lui r15, 260096
0023c0  3b700800  bneq r16, zero, 28
0023c4  8b67ed18  sub.f.rn r15, r26, r14
0023c8  0b68e718  sub.f.rn r16, r14, r14
0023cc  8f870700  exp.f.rn r15, r15
0023d0  0f080800  exp.f.rn r16, r16
0023d4  8be70720  mul.f.rn r15, r15, zero
0023d8  8b67f810  add.f.rn r15, r16, r15
0023dc  13080100  seteq r16, r2, zero
0023e0  17980101  or r16, r3, r16
0023e4  97080201  and r17, r4, r16
0023e8  2b08803f  lui r16, 260096
0023ec  3bb00800  bneq r17, zero, 12
0023f0  8be51518  sub.f.rn r11, r11, r1
0023f4  0f880500  exp.f.rn r16, r11
0023f8  3bac08fe  bneq r17, zero, -248
0023fc  8b651718  sub.f.rn r11, r14, r1
002400  0f860500  exp.f.rn r12, r11
002404  dbdfffff  j -260
002408  0be16210  add.f.rn r2, r5, r6
00240c  e3410ffd  loadli.w r3,  -380(r30)
002410  73e02100  stores.w r2, 0(r3)
002414  00a00300  mfence { lm, sm, gm }
002418  80210e04  csr_set csr3, r28
00241c  00d00100  sync_group
002420  6301effd  loadli.w r2,  -272(r30)
002424  3b180100  bneq r2, zero, 516
002428  6fc10a00  loads.w r2, 0(r21)
00242c  6fc24a00  loads.w r4, 4(r21)
002430  efc18a00  loads.w r3, 8(r21)
002434  0b614110  add.f.rn r2, r2, r4
002438  6fc2ca00  loads.w r4, 12(r21)
00243c  0b613110  add.f.rn r2, r2, r3
002440  efc10a01  loads.w r3, 16(r21)
002444  0b614110  add.f.rn r2, r2, r4
002448  6fc24a01  loads.w r4, 20(r21)
00244c  0b613110  add.f.rn r2, r2, r3
002450  efc18a01  loads.w r3, 24(r21)
002454  0b614110  add.f.rn r2, r2, r4
002458  6fc2ca01  loads.w r4, 28(r21)
00245c  0b613110  add.f.rn r2, r2, r3
002460  efc10a02  loads.w r3, 32(r21)
002464  0b614110  add.f.rn r2, r2, r4
002468  6fc24a02  loads.w r4, 36(r21)
00246c  0b613110  add.f.rn r2, r2, r3
002470  efc18a02  loads.w r3, 40(r21)
002474  0b614110  add.f.rn r2, r2, r4
002478  6fc2ca02  loads.w r4, 44(r21)
00247c  0b613110  add.f.rn r2, r2, r3
002480  efc10a03  loads.w r3, 48(r21)
002484  0b614110  add.f.rn r2, r2, r4
002488  6fc24a03  loads.w r4, 52(r21)
00248c  0b613110  add.f.rn r2, r2, r3
002490  efc18a03  loads.w r3, 56(r21)
002494  0b614110  add.f.rn r2, r2, r4
002498  6fc2ca03  loads.w r4, 60(r21)
00249c  0b613110  add.f.rn r2, r2, r3
0024a0  efc10a04  loads.w r3, 64(r21)
0024a4  0b614110  add.f.rn r2, r2, r4
0024a8  6fc24a04  loads.w r4, 68(r21)
0024ac  0b613110  add.f.rn r2, r2, r3
0024b0  efc18a04  loads.w r3, 72(r21)
0024b4  0b614110  add.f.rn r2, r2, r4
0024b8  6fc2ca04  loads.w r4, 76(r21)
0024bc  0b613110  add.f.rn r2, r2, r3
0024c0  efc10a05  loads.w r3, 80(r21)
0024c4  0b614110  add.f.rn r2, r2, r4
0024c8  6fc24a05  loads.w r4, 84(r21)
0024cc  0b613110  add.f.rn r2, r2, r3
0024d0  efc18a05  loads.w r3, 88(r21)
0024d4  0b614110  add.f.rn r2, r2, r4
0024d8  6fc2ca05  loads.w r4, 92(r21)
0024dc  0b613110  add.f.rn r2, r2, r3
0024e0  efc10a06  loads.w r3, 96(r21)
0024e4  0b614110  add.f.rn r2, r2, r4
0024e8  6fc24a06  loads.w r4, 100(r21)
0024ec  0b613110  add.f.rn r2, r2, r3
0024f0  efc18a06  loads.w r3, 104(r21)
0024f4  0b614110  add.f.rn r2, r2, r4
0024f8  6fc2ca06  loads.w r4, 108(r21)
0024fc  0b613110  add.f.rn r2, r2, r3
002500  efc10a07  loads.w r3, 112(r21)
002504  0b614110  add.f.rn r2, r2, r4
002508  6fc24a07  loads.w r4, 116(r21)
00250c  0b613110  add.f.rn r2, r2, r3
002510  efc18a07  loads.w r3, 120(r21)
002514  0b614110  add.f.rn r2, r2, r4
002518  6fc2ca07  loads.w r4, 124(r21)
00251c  0b613110  add.f.rn r2, r2, r3
002520  efc10a08  loads.w r3, 128(r21)
002524  0b614110  add.f.rn r2, r2, r4
002528  6fc24a08  loads.w r4, 132(r21)
00252c  0b613110  add.f.rn r2, r2, r3
002530  efc18a08  loads.w r3, 136(r21)
002534  0b614110  add.f.rn r2, r2, r4
002538  6fc2ca08  loads.w r4, 140(r21)
00253c  0b613110  add.f.rn r2, r2, r3
002540  efc10a09  loads.w r3, 144(r21)
002544  0b614110  add.f.rn r2, r2, r4
002548  6fc24a09  loads.w r4, 148(r21)
00254c  0b613110  add.f.rn r2, r2, r3
002550  efc18a09  loads.w r3, 152(r21)
002554  0b614110  add.f.rn r2, r2, r4
002558  6fc2ca09  loads.w r4, 156(r21)
00255c  0b613110  add.f.rn r2, r2, r3
002560  efc10a0a  loads.w r3, 160(r21)
002564  0b614110  add.f.rn r2, r2, r4
002568  6fc24a0a  loads.w r4, 164(r21)
00256c  0b613110  add.f.rn r2, r2, r3
002570  efc18a0a  loads.w r3, 168(r21)
002574  0b614110  add.f.rn r2, r2, r4
002578  6fc2ca0a  loads.w r4, 172(r21)
00257c  0b613110  add.f.rn r2, r2, r3
002580  efc10a0b  loads.w r3, 176(r21)
002584  0b614110  add.f.rn r2, r2, r4
002588  6fc24a0b  loads.w r4, 180(r21)
00258c  0b613110  add.f.rn r2, r2, r3
002590  efc18a0b  loads.w r3, 184(r21)
002594  0b614110  add.f.rn r2, r2, r4
002598  6fc2ca0b  loads.w r4, 188(r21)
00259c  0b613110  add.f.rn r2, r2, r3
0025a0  efc10a0c  loads.w r3, 192(r21)
0025a4  0b614110  add.f.rn r2, r2, r4
0025a8  6fc24a0c  loads.w r4, 196(r21)
0025ac  0b613110  add.f.rn r2, r2, r3
0025b0  efc18a0c  loads.w r3, 200(r21)
0025b4  0b614110  add.f.rn r2, r2, r4
0025b8  6fc2ca0c  loads.w r4, 204(r21)
0025bc  0b613110  add.f.rn r2, r2, r3
0025c0  efc10a0d  loads.w r3, 208(r21)
0025c4  0b614110  add.f.rn r2, r2, r4
0025c8  6fc24a0d  loads.w r4, 212(r21)
0025cc  0b613110  add.f.rn r2, r2, r3
0025d0  efc18a0d  loads.w r3, 216(r21)
0025d4  0b614110  add.f.rn r2, r2, r4
0025d8  6fc2ca0d  loads.w r4, 220(r21)
0025dc  0b613110  add.f.rn r2, r2, r3
0025e0  efc10a0e  loads.w r3, 224(r21)
0025e4  0b614110  add.f.rn r2, r2, r4
0025e8  6fc24a0e  loads.w r4, 228(r21)
0025ec  0b613110  add.f.rn r2, r2, r3
0025f0  efc18a0e  loads.w r3, 232(r21)
0025f4  0b614110  add.f.rn r2, r2, r4
0025f8  6fc2ca0e  loads.w r4, 236(r21)
0025fc  0b613110  add.f.rn r2, r2, r3
002600  efc10a0f  loads.w r3, 240(r21)
002604  0b614110  add.f.rn r2, r2, r4
002608  6fc24a0f  loads.w r4, 244(r21)
00260c  0b613110  add.f.rn r2, r2, r3
002610  efc18a0f  loads.w r3, 248(r21)
002614  0b614110  add.f.rn r2, r2, r4
002618  6fc2ca0f  loads.w r4, 252(r21)
00261c  0b613110  add.f.rn r2, r2, r3
002620  0b614110  add.f.rn r2, r2, r4
002624  73e02a00  stores.w r2, 0(r21)
002628  00a00300  mfence { lm, sm, gm }
00262c  80210e04  csr_set csr3, r28
002630  00d00100  sync_group
002634  6fc10a00  loads.w r2, 0(r21)
002638  9f010000  addli r3, zero, 0
00263c  9f050fff  addli r11, r30, -128
002640  1f060001  addli r12, zero, 128
002644  6bb2e4ff  load.hu r4, -2(r9)
002648  ebb20400  load.hu r5, 0(r9)
00264c  6b33e4ff  load.hu r6, -2(r8)
002650  6b350400  load.hu r10, 0(r8)
002654  9fc40400  addli r9, r9, 4
002658  1f440400  addli r8, r8, 4
00265c  33120220  hfloat2float.rn r4, r4
002660  33130320  hfloat2float.rn r6, r6
002664  b3920220  hfloat2float.rn r5, r5
002668  33150520  hfloat2float.rn r10, r10
00266c  0b626210  add.f.rn r4, r4, r6
002670  8be2a210  add.f.rn r5, r5, r10
002674  0b933510  add.s r6, r11, r3
002678  9f811100  addli r3, r3, 8
00267c  0b621218  sub.f.rn r4, r4, r1
002680  8be21218  sub.f.rn r5, r5, r1
002684  0f020200  exp.f.rn r4, r4
002688  8f820200  exp.f.rn r5, r5
00268c  0f022218  div.f.rn r4, r4, r2
002690  8f822218  div.f.rn r5, r5, r2
002694  67004300  storeli.w r4, 0(r6)
002698  67405300  storeli.w r5, 4(r6)
00269c  00a00000  mfence { lm }
0026a0  bb9ec1fe  bneq r3, r12, -92
0026a4  6b510fee  load.d r[3:4], -288(r30)
0026a8  9f200000  addli r1, zero, 2
0026ac  6b520f01  load.d r[5:6], 16(r30)
0026b0  97301102  sll.d r[2:3], r[3:4], r1
0026b4  ab0100f0  lui r3, 983040
0026b8  8b201210  add.ul r[2:3], r[5:6], r[2:3]
0026bc  97113600  or r3, r12, r3
0026c0  ffb1b000  s_lm2gm r3, r11, 0(r[2:3])
0026c4  9f71f00f  addli r3, zero, 2047
0026c8  00a00000  mfence { lm }
0026cc  6342dffd  loadli.w r4,  -276(r30)
0026d0  5b60fbff  j -9472
0026d4  ab01c07f  lui r3, 523264
0026d8  b76701ee  beq r2, zero, -8712
0026dc  1f810100  addli r2, r3, 0
0026e0  bbd700ee  bneq r1, zero, -8716
0026e4  dbbefbff  j -8716
0026e8  2b01c07f  lui r2, 523264
0026ec  b7b901ee  beq r3, zero, -8596
0026f0  9f010100  addli r3, r2, 0
0026f4  bba900ee  bneq r1, zero, -8600
0026f8  5bcdfbff  j -8600
0026fc  2b01c07f  lui r2, 523264
002700  379b00ee  beq r1, zero, -8508
002704  9f000100  addli r1, r2, 0
002708  3b8b0dee  bneq r27, zero, -8512
00270c  5bd8fbff  j -8512
002710  ab02c07f  lui r5, 523264
002714  37e30df0  beq r27, zero, -7976
002718  9f8d0200  addli r27, r5, 0
00271c  3b530ef0  bneq r28, zero, -7980
002720  db1afcff  j -7980
002724  ab02c07f  lui r5, 523264
002728  37050ef0  beq r28, zero, -7872
00272c  1f8e0200  addli r28, r5, 0
002730  bb7406f0  bneq r12, zero, -7876
002734  db27fcff  j -7876
002738  ab02c07f  lui r5, 523264
00273c  630b2ffc  loadli.w r22,  -496(r30)
002740  375606f0  beq r12, zero, -7788
002744  1f860200  addli r12, r5, 0
002748  3b460af0  bneq r20, zero, -7792
00274c  5b32fcff  j -7792
002750  ab02c07f  lui r5, 523264
002754  b7270af0  beq r20, zero, -7704
002758  1f8a0200  addli r20, r5, 0
00275c  bb9700f0  bneq r1, zero, -7708
002760  db3cfcff  j -7708
002764  ab02c07f  lui r5, 523264
002768  e347fffb  loadli.w r15,  -516(r30)
00276c  378900f0  beq r1, zero, -7616
002770  9f800200  addli r1, r5, 0
002774  bb7801f0  bneq r2, zero, -7620
002778  db47fcff  j -7620
00277c  ab00c07f  lui r1, 523264
002780  63465ffc  loadli.w r12,  -468(r30)
002784  375a01f0  beq r2, zero, -7532
002788  1f810000  addli r2, r1, 0
00278c  3bca08f0  bneq r17, zero, -7536
002790  5b52fcff  j -7536
002794  ab00c07f  lui r1, 523264
002798  b7ab08f0  beq r17, zero, -7448
00279c  9f880000  addli r17, r1, 0
0027a0  bb9b01f0  bneq r3, zero, -7452
0027a4  db5cfcff  j -7452
0027a8  ab00c07f  lui r1, 523264
0027ac  634e4ffc  loadli.w r28,  -476(r30)
0027b0  378d01f0  beq r3, zero, -7360
0027b4  9f810000  addli r3, r1, 0
0027b8  bb7c07f0  bneq r14, zero, -7364
0027bc  db67fcff  j -7364
0027c0  ab00c07f  lui r1, 523264
0027c4  375e07f0  beq r14, zero, -7276
0027c8  1f870000  addli r14, r1, 0
0027cc  3b4e08f0  bneq r16, zero, -7280
0027d0  5b72fcff  j -7280
0027d4  ab00c07f  lui r1, 523264
0027d8  b73f08f0  beq r16, zero, -7188
0027dc  1f880000  addli r16, r1, 0
0027e0  bb2f05f0  bneq r10, zero, -7192
0027e4  5b7dfcff  j -7192
0027e8  ab00c07f  lui r1, 523264
0027ec  371105f2  beq r10, zero, -7100
0027f0  1f850000  addli r10, r1, 0
0027f4  3b0103f2  bneq r6, zero, -7104
0027f8  5b88fcff  j -7104
0027fc  ab00c07f  lui r1, 523264
002800  377203f2  beq r6, zero, -7012
002804  1f830000  addli r6, r1, 0
002808  3be206f2  bneq r13, zero, -7016
00280c  5b93fcff  j -7016
002810  ab00c07f  lui r1, 523264
002814  63021ffd  loadli.w r4,  -376(r30)
002818  b7d306f2  beq r13, zero, -6924
00281c  9f860000  addli r13, r1, 0
002820  bbc307f2  bneq r15, zero, -6928
002824  5b9efcff  j -6928
002828  ab00c07f  lui r1, 523264
00282c  63421ffd  loadli.w r4,  -372(r30)
002830  37b507f2  beq r15, zero, -6836
002834  9f870000  addli r15, r1, 0
002838  e3021ffd  loadli.w r5,  -376(r30)
00283c  3ba502f2  bneq r5, zero, -6840
002840  5ba9fcff  j -6840
002844  ab00c07f  lui r1, 523264
002848  63022ffd  loadli.w r4,  -368(r30)
00284c  b7b807f2  beq r15, zero, -6612
002850  9f870000  addli r15, r1, 0
002854  bba80df2  bneq r27, zero, -6616
002858  5bc5fcff  j -6616
00285c  ab00c07f  lui r1, 523264
002860  63422ffd  loadli.w r4,  -364(r30)
002864  37bc0df2  beq r27, zero, -6388
002868  9f8d0000  addli r27, r1, 0
00286c  3b2c0af2  bneq r20, zero, -6392
002870  5be1fcff  j -6392
002874  ab00c07f  lui r1, 523264
002878  b70d0af2  beq r20, zero, -6304
00287c  1f8a0000  addli r20, r1, 0
002880  e3422ffd  loadli.w r5,  -364(r30)
002884  3bfd02f2  bneq r5, zero, -6308
002888  dbebfcff  j -6308
00288c  ab00c07f  lui r1, 523264
002890  63023ffd  loadli.w r4,  -360(r30)
002894  b76e0af2  beq r20, zero, -6216
002898  1f8a0000  addli r20, r1, 0
00289c  bbde08f2  bneq r17, zero, -6220
0028a0  dbf6fcff  j -6220
0028a4  ab00c07f  lui r1, 523264
0028a8  37b008f4  beq r17, zero, -6132
0028ac  9f880000  addli r17, r1, 0
0028b0  e3023ffd  loadli.w r5,  -360(r30)
0028b4  3ba002f4  bneq r5, zero, -6136
0028b8  5b01fdff  j -6136
0028bc  ab00c07f  lui r1, 523264
0028c0  63423ffd  loadli.w r4,  -356(r30)
0028c4  b79108f4  beq r17, zero, -6044
0028c8  9f880000  addli r17, r1, 0
0028cc  bb0103f4  bneq r6, zero, -6048
0028d0  5b0cfdff  j -6048
0028d4  ab00c07f  lui r1, 523264
0028d8  b77203f4  beq r6, zero, -5956
0028dc  1f830000  addli r6, r1, 0
0028e0  e3423ffd  loadli.w r5,  -356(r30)
0028e4  bbe202f4  bneq r5, zero, -5960
0028e8  5b17fdff  j -5960
0028ec  ab00c07f  lui r1, 523264
0028f0  63024ffd  loadli.w r4,  -352(r30)
0028f4  375403f4  beq r6, zero, -5868
0028f8  1f830000  addli r6, r1, 0
0028fc  3b440bf4  bneq r22, zero, -5872
002900  5b22fdff  j -5872
002904  ab00c07f  lui r1, 523264
002908  b7250bf4  beq r22, zero, -5784
00290c  1f8b0000  addli r22, r1, 0
002910  e3024ffd  loadli.w r5,  -352(r30)
002914  bb9502f4  bneq r5, zero, -5788
002918  db2cfdff  j -5788
00291c  ab00c07f  lui r1, 523264
002920  63424ffd  loadli.w r4,  -348(r30)
002924  371703f4  beq r6, zero, -5692
002928  1f830000  addli r6, r1, 0
00292c  3b8709f4  bneq r19, zero, -5696
002930  5b38fdff  j -5696
002934  ab00c07f  lui r1, 523264
002938  37f809f4  beq r19, zero, -5604
00293c  9f890000  addli r19, r1, 0
002940  e3424ffd  loadli.w r5,  -348(r30)
002944  3be802f4  bneq r5, zero, -5608
002948  5b43fdff  j -5608
00294c  ab00c07f  lui r1, 523264
002950  63025ffd  loadli.w r4,  -344(r30)
002954  b7d909f4  beq r19, zero, -5516
002958  9f890000  addli r19, r1, 0
00295c  bbc908f4  bneq r17, zero, -5520
002960  5b4efdff  j -5520
002964  ab00c07f  lui r1, 523264
002968  37ab08f4  beq r17, zero, -5432
00296c  9f880000  addli r17, r1, 0
002970  e3025ffd  loadli.w r5,  -344(r30)
002974  3b9b02f4  bneq r5, zero, -5436
002978  db58fdff  j -5436
00297c  ab00c07f  lui r1, 523264
002980  63425ffd  loadli.w r4,  -340(r30)
002984  b79c09f4  beq r19, zero, -5340
002988  9f890000  addli r19, r1, 0
00298c  bb8c06f4  bneq r13, zero, -5344
002990  5b64fdff  j -5344
002994  ab00c07f  lui r1, 523264
002998  b7fd06f4  beq r13, zero, -5252
00299c  9f860000  addli r13, r1, 0
0029a0  e3425ffd  loadli.w r5,  -340(r30)
0029a4  bbed02f4  bneq r5, zero, -5256
0029a8  5b6ffdff  j -5256
0029ac  ab00c07f  lui r1, 523264
0029b0  63026ffd  loadli.w r4,  -336(r30)
0029b4  37df06f4  beq r13, zero, -5164
0029b8  9f860000  addli r13, r1, 0
0029bc  3b4f05f4  bneq r10, zero, -5168
0029c0  5b7afdff  j -5168
0029c4  ab00c07f  lui r1, 523264
0029c8  b73005f6  beq r10, zero, -5076
0029cc  1f850000  addli r10, r1, 0
0029d0  e3026ffd  loadli.w r5,  -336(r30)
0029d4  bba002f6  bneq r5, zero, -5080
0029d8  5b85fdff  j -5080
0029dc  ab00c07f  lui r1, 523264
0029e0  63426ffd  loadli.w r4,  -332(r30)
0029e4  371205f6  beq r10, zero, -4988
0029e8  1f850000  addli r10, r1, 0
0029ec  3b8205f6  bneq r11, zero, -4992
0029f0  5b90fdff  j -4992
0029f4  ab00c07f  lui r1, 523264
0029f8  37f305f6  beq r11, zero, -4900
0029fc  9f850000  addli r11, r1, 0
002a00  e3426ffd  loadli.w r5,  -332(r30)
002a04  3be302f6  bneq r5, zero, -4904
002a08  5b9bfdff  j -4904
002a0c  ab00c07f  lui r1, 523264
002a10  63027ffd  loadli.w r4,  -328(r30)
002a14  b7d405f6  beq r11, zero, -4812
002a18  9f850000  addli r11, r1, 0
002a1c  bb4407f6  bneq r14, zero, -4816
002a20  5ba6fdff  j -4816
002a24  ab00c07f  lui r1, 523264
002a28  373607f6  beq r14, zero, -4724
002a2c  1f870000  addli r14, r1, 0
002a30  e3027ffd  loadli.w r5,  -328(r30)
002a34  3ba602f6  bneq r5, zero, -4728
002a38  5bb1fdff  j -4728
002a3c  ab00c07f  lui r1, 523264
002a40  63427ffd  loadli.w r4,  -324(r30)
002a44  b71707f6  beq r14, zero, -4636
002a48  1f870000  addli r14, r1, 0
002a4c  bb0706f6  bneq r12, zero, -4640
002a50  5bbcfdff  j -4640
002a54  ab00c07f  lui r1, 523264
002a58  b76806f6  beq r12, zero, -4552
002a5c  1f860000  addli r12, r1, 0
002a60  e3427ffd  loadli.w r5,  -324(r30)
002a64  bbd802f6  bneq r5, zero, -4556
002a68  dbc6fdff  j -4556
002a6c  ab00c07f  lui r1, 523264
002a70  63028ffd  loadli.w r4,  -320(r30)
002a74  374a06f6  beq r12, zero, -4464
002a78  1f860000  addli r12, r1, 0
002a7c  3bba06f6  bneq r13, zero, -4468
002a80  dbd1fdff  j -4468
002a84  ab00c07f  lui r1, 523264
002a88  b79b06f6  beq r13, zero, -4380
002a8c  9f860000  addli r13, r1, 0
002a90  e3028ffd  loadli.w r5,  -320(r30)
002a94  bb8b02f6  bneq r5, zero, -4384
002a98  5bdcfdff  j -4384
002a9c  ab00c07f  lui r1, 523264
002aa0  63428ffd  loadli.w r4,  -316(r30)
002aa4  b77c0af6  beq r20, zero, -4292
002aa8  1f8a0000  addli r20, r1, 0
002aac  bbec05f6  bneq r11, zero, -4296
002ab0  5be7fdff  j -4296
002ab4  ab00c07f  lui r1, 523264
002ab8  37ce05f6  beq r11, zero, -4208
002abc  9f850000  addli r11, r1, 0
002ac0  e3428ffd  loadli.w r5,  -316(r30)
002ac4  3bbe02f6  bneq r5, zero, -4212
002ac8  dbf1fdff  j -4212
002acc  ab00c07f  lui r1, 523264
002ad0  b73f0bf6  beq r22, zero, -4116
002ad4  1f8b0000  addli r22, r1, 0
002ad8  bb2f05f6  bneq r10, zero, -4120
002adc  5bfdfdff  j -4120
002ae0  ab00c07f  lui r1, 523264
002ae4  370105f8  beq r10, zero, -4032
002ae8  1f850000  addli r10, r1, 0
002aec  bbf005f8  bneq r11, zero, -4036
002af0  db07feff  j -4036
002af4  ab00c07f  lui r1, 523264
002af8  63029ffd  loadli.w r4,  -312(r30)
002afc  37e205f8  beq r11, zero, -3944
002b00  9f850000  addli r11, r1, 0
002b04  3b5205f8  bneq r10, zero, -3948
002b08  db12feff  j -3948
002b0c  ab00c07f  lui r1, 523264
002b10  63429ffd  loadli.w r4,  -308(r30)
002b14  379608f8  beq r17, zero, -3708
002b18  9f880000  addli r17, r1, 0
002b1c  3b060bf8  bneq r22, zero, -3712
002b20  5b30feff  j -3712
002b24  ab00c07f  lui r1, 523264
002b28  6342affd  loadli.w r4,  -300(r30)
002b2c  b7090ef8  beq r28, zero, -3488
002b30  1f8e0000  addli r28, r1, 0
002b34  3bf90df8  bneq r27, zero, -3492
002b38  db4bfeff  j -3492
002b3c  ab00c07f  lui r1, 523264
002b40  b7da0df8  beq r27, zero, -3404
002b44  9f8d0000  addli r27, r1, 0
002b48  e342affd  loadli.w r5,  -300(r30)
002b4c  bbca02f8  bneq r5, zero, -3408
002b50  5b56feff  j -3408
002b54  ab00c07f  lui r1, 523264
002b58  6302bffd  loadli.w r4,  -296(r30)
002b5c  376c0ef8  beq r28, zero, -3304
002b60  1f8e0000  addli r28, r1, 0
002b64  e301affd  loadli.w r3,  -304(r30)
002b68  3bdc01f8  bneq r3, zero, -3308
002b6c  db62feff  j -3308
002b70  ab00c07f  lui r1, 523264
002b74  378e0df8  beq r27, zero, -3200
002b78  9f8d0000  addli r27, r1, 0
002b7c  e302bffd  loadli.w r5,  -296(r30)
002b80  bbfd02f8  bneq r5, zero, -3204
002b84  db6ffeff  j -3204
002b88  ab00c07f  lui r1, 523264
002b8c  6342bffd  loadli.w r4,  -292(r30)
002b90  37ef0df8  beq r27, zero, -3112
002b94  9f8d0000  addli r27, r1, 0
002b98  3b5f03f8  bneq r6, zero, -3116
002b9c  db7afeff  j -3116
002ba0  ab00c07f  lui r1, 523264
002ba4  b7f20dfa  beq r27, zero, -2884
002ba8  9f8d0000  addli r27, r1, 0
002bac  bbe209fa  bneq r19, zero, -2888
002bb0  5b97feff  j -2888
002bb4  ab00c07f  lui r1, 523264
002bb8  1f0a0300  addli r20, r6, 0
002bbc  37e409fa  beq r19, zero, -2792
002bc0  9f890000  addli r19, r1, 0
002bc4  6343cffc  loadli.w r6,  -412(r30)
002bc8  3bd408fa  bneq r17, zero, -2796
002bcc  dba2feff  j -2796
002bd0  ab00c07f  lui r1, 523264
002bd4  b7b508fa  beq r17, zero, -2708
002bd8  9f880000  addli r17, r1, 0
002bdc  bb2507fa  bneq r14, zero, -2712
002be0  5badfeff  j -2712
002be4  ab00c07f  lui r1, 523264
002be8  370707fa  beq r14, zero, -2624
002bec  1f870000  addli r14, r1, 0
002bf0  bbf606fa  bneq r13, zero, -2628
002bf4  dbb7feff  j -2628
002bf8  ab00c07f  lui r1, 523264
002bfc  37d806fa  beq r13, zero, -2540
002c00  9f860000  addli r13, r1, 0
002c04  3b4805fa  bneq r10, zero, -2544
002c08  5bc2feff  j -2544
002c0c  ab00c07f  lui r1, 523264
002c10  b72905fa  beq r10, zero, -2456
002c14  1f850000  addli r10, r1, 0
002c18  bb1903fa  bneq r6, zero, -2460
002c1c  dbccfeff  j -2460
002c20  9f8e2e04  addli sp, sp, 528
002c24  00a00300  mfence { lm, sm, gm }
002c28  00100000  exit
002c2c  00100000  exit
002c30  00100000  exit
002c34  00100000  exit
002c38  00100000  exit
002c3c  00100000  exit
002c40  00100000  exit
002c44  00100000  exit
002c48  00100000  exit
002c4c  00100000  exit
002c50  00100000  exit
002c54  00100000  exit
002c58  00100000  exit
002c5c  00100000  exit
002c60  00100000  exit
002c64  00100000  exit
002c68  00100000  exit
002c6c  00100000  exit
002c70  00100000  exit
002c74  00100000  exit
002c78  00100000  exit
002c7c  00100000  exit
002c80  00100000  exit
002c84  00100000  exit
002c88  00100000  exit
002c8c  00100000  exit
002c90  00100000  exit
002c94  00100000  exit
002c98  00100000  exit
002c9c  00100000  exit
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
