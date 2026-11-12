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
0000dc  9f8e8efb  addli sp, sp, -576
0000e0  1f8f0e04  addli r30, sp, 512
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
00012c  674d8ffc  storeli.w r8, -300(r30)
000130  73605400  stores.w r5, 0(r8)
000134  0b126220  mul.s r4, r4, r6
000138  00a00300  mfence { lm, sm, gm }
00013c  80210e04  csr_set csr3, r28
000140  00d00100  sync_group
000144  670d4ffc  storeli.w r4, -304(r30)
000148  cb0fa214  ble.s r4, r10, 11232
00014c  9f038000  addli r7, zero, 64
000150  6344affd  loadli.w r8,  -300(r30)
000154  9f150000  addli r11, zero, 1
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  9f078ffe  addli r15, r30, -192
000160  9f080fff  addli r17, r30, -128
000164  1f493000  addli r18, zero, 28
000168  9f098fff  addli r19, r30, -64
00016c  e741cfff  storeli.w r28, -228(r30)
000170  0b927030  div.s r4, r1, r7
000174  1f042408  addli r8, r8, 1040
000178  e70c8ffc  storeli.w r8, -312(r30)
00017c  00d40002  load_param_i r8, 1
000180  670c8ffc  storeli.w r8, -320(r30)
000184  e74c4ffc  storeli.w r4, -308(r30)
000188  1b326200  slli r4, r4, 6
00018c  0b924018  sub.s r4, r1, r4
000190  9b80f003  andi r1, r1, 63
000194  1b324200  slli r4, r4, 4
000198  e7431ffe  storeli.w r1, -196(r30)
00019c  1b141200  ori r8, r4, 1
0001a0  674c4ffc  storeli.w r4, -316(r30)
0001a4  e74b8ffc  storeli.w r8, -324(r30)
0001a8  1b142200  ori r8, r4, 2
0001ac  e70b8ffc  storeli.w r8, -328(r30)
0001b0  1b143200  ori r8, r4, 3
0001b4  674b8ffc  storeli.w r8, -332(r30)
0001b8  1b144200  ori r8, r4, 4
0001bc  670b8ffc  storeli.w r8, -336(r30)
0001c0  1b145200  ori r8, r4, 5
0001c4  e74a8ffc  storeli.w r8, -340(r30)
0001c8  1b146200  ori r8, r4, 6
0001cc  e70a8ffc  storeli.w r8, -344(r30)
0001d0  1b147200  ori r8, r4, 7
0001d4  674a8ffc  storeli.w r8, -348(r30)
0001d8  1b148200  ori r8, r4, 8
0001dc  670a8ffc  storeli.w r8, -352(r30)
0001e0  1b149200  ori r8, r4, 9
0001e4  e7498ffc  storeli.w r8, -356(r30)
0001e8  1b14a200  ori r8, r4, 10
0001ec  e7098ffc  storeli.w r8, -360(r30)
0001f0  1b14b200  ori r8, r4, 11
0001f4  67498ffc  storeli.w r8, -364(r30)
0001f8  1b14c200  ori r8, r4, 12
0001fc  67098ffc  storeli.w r8, -368(r30)
000200  1b14d200  ori r8, r4, 13
000204  e7488ffc  storeli.w r8, -372(r30)
000208  1b14e200  ori r8, r4, 14
00020c  e7088ffc  storeli.w r8, -376(r30)
000210  1b14f200  ori r8, r4, 15
000214  67488ffc  storeli.w r8, -380(r30)
000218  33140228  sext_int2long r[9:10], r4
00021c  2bf2ffff  lui r4, 1048575
000220  1b1202f0  ori r4, r4, 3840
000224  1734b402  sll.d r[9:10], r[9:10], r11
000228  97814100  and r3, r3, r4
00022c  0ba28210  add.ul r[5:6], r[6:7], r[9:10]
000230  8b952110  add.s r11, r3, r2
000234  733c4fe6  store.d r[5:6], -392(r30)
000238  9f024000  addli r5, zero, 32
00023c  1f872508  addli r14, r11, 1040
000240  9f000000  addli r1, zero, 0
000244  0b911710  add.s r2, r15, r1
000248  9fc00000  addli r1, r1, 4
00024c  73100100  store.h zero, 0(r2)
000250  73110100  store.h zero, 2(r2)
000254  00a00000  mfence { lm }
000258  bbbf50fe  bneq r1, r5, -20
00025c  e3005f00  loadli.w r1,  40(r30)
000260  63414f00  loadli.w r2,  36(r30)
000264  9f110000  addli r3, zero, 1
000268  e703affe  storeli.w r10, -200(r30)
00026c  8b101530  div.s r1, r10, r1
000270  8b902030  div.s r1, r1, r2
000274  63419ffd  loadli.w r2,  -308(r30)
000278  8b9c2010  add.s r25, r1, r2
00027c  e3408ffd  loadli.w r1,  -316(r30)
000280  2b0100f0  lui r2, 983040
000284  1bbdac00  slli r26, r25, 10
000288  17912200  or r2, r5, r2
00028c  8b101d10  add.s r1, r26, r1
000290  33940028  sext_int2long r[9:10], r1
000294  ab0000f0  lui r1, 983040
000298  73388ff2  store.d r[9:10], -208(r30)
00029c  97313402  sll.d r[4:5], r[9:10], r3
0002a0  6b540f00  load.d r[9:10], 0(r30)
0002a4  97901200  or r1, r5, r1
0002a8  8b213410  add.ul r[4:5], r[9:10], r[4:5]
0002ac  7fa1f100  l_gm2lm r2, r15, 0(r[4:5])
0002b0  6b518fe7  load.d r[3:4], -392(r30)
0002b4  ff201101  l_gm2lm r1, r17, 0(r[3:4])
0002b8  00a00000  mfence { lm }
0002bc  eb300ff4  load.hu r1, -192(r30)
0002c0  6b312ff4  load.hu r2, -190(r30)
0002c4  eb310ff8  load.hu r3, -128(r30)
0002c8  6b322ff8  load.hu r4, -126(r30)
0002cc  b3900020  hfloat2float.rn r1, r1
0002d0  b3910120  hfloat2float.rn r3, r3
0002d4  33110120  hfloat2float.rn r2, r2
0002d8  33120220  hfloat2float.rn r4, r4
0002dc  0b6a4110  add.f.rn r20, r2, r4
0002e0  0be83010  add.f.rn r16, r1, r3
0002e4  9f020800  addli r5, r16, 0
0002e8  1f010a00  addli r2, r20, 0
0002ec  3fb07c00  blt.s r25, r7, 12
0002f0  ab0280ff  lui r5, 1046528
0002f4  2b0180ff  lui r2, 1046528
0002f8  1fac0700  addli r24, r15, 2
0002fc  9f010000  addli r3, zero, 0
000300  db020000  j 20
000304  9fc10100  addli r3, r3, 4
000308  1f010200  addli r2, r4, 0
00030c  9f820000  addli r5, r1, 0
000310  37c52101  beq r3, r18, 336
000314  0b923710  add.s r4, r15, r3
000318  0b933810  add.s r6, r17, r3
00031c  eb304200  load.hu r1, 4(r4)
000320  6b344300  load.hu r8, 4(r6)
000324  6b326200  load.hu r4, 6(r4)
000328  6b336300  load.hu r6, 6(r6)
00032c  b3900020  hfloat2float.rn r1, r1
000330  33140420  hfloat2float.rn r8, r8
000334  8be08010  add.f.rn r1, r1, r8
000338  1f840200  addli r8, r5, 0
00033c  93e45004  setlt.f r9, r1, r5
000340  3ba00400  bneq r9, zero, 8
000344  1f840000  addli r8, r1, 0
000348  9bb49000  slli r9, r1, 9
00034c  1bb59200  slli r10, r5, 9
000350  1bc67001  srli r12, r1, 23
000354  9bc67201  srli r13, r5, 23
000358  93840400  seteq r9, r9, zero
00035c  13050500  seteq r10, r10, zero
000360  1b06f60f  andi r12, r12, 255
000364  9b86f60f  andi r13, r13, 255
000368  1b76f60f  setlti r12, r12, 255
00036c  9bf6f60f  setlti r13, r13, 255
000370  97149600  or r9, r12, r9
000374  1795a600  or r10, r13, r10
000378  97049500  and r9, r10, r9
00037c  b7d20400  beq r9, zero, 180
000380  9f840200  addli r9, r5, 0
000384  bbe20200  bneq r5, zero, 184
000388  37a00000  beq r1, zero, 8
00038c  9f800400  addli r1, r9, 0
000390  93648006  setle.f r9, zero, r8
000394  13650406  setle.f r10, r8, zero
000398  97049500  and r9, r10, r9
00039c  3ba00400  bneq r9, zero, 8
0003a0  9f000400  addli r1, r8, 0
0003a4  3fa07c00  blt.s r25, r7, 8
0003a8  9f800200  addli r1, r5, 0
0003ac  33120220  hfloat2float.rn r4, r4
0003b0  b3120320  hfloat2float.rn r5, r6
0003b4  0b625210  add.f.rn r4, r4, r5
0003b8  9f020100  addli r5, r2, 0
0003bc  13632204  setlt.f r6, r4, r2
0003c0  3b200300  bneq r6, zero, 8
0003c4  9f020200  addli r5, r4, 0
0003c8  1b339200  slli r6, r4, 9
0003cc  1b349100  slli r8, r2, 9
0003d0  9b447201  srli r9, r4, 23
0003d4  1b457101  srli r10, r2, 23
0003d8  13030300  seteq r6, r6, zero
0003dc  13040400  seteq r8, r8, zero
0003e0  9b84f40f  andi r9, r9, 255
0003e4  1b05f50f  andi r10, r10, 255
0003e8  9bf4f40f  setlti r9, r9, 255
0003ec  1b75f50f  setlti r10, r10, 255
0003f0  17936400  or r6, r9, r6
0003f4  17148500  or r8, r10, r8
0003f8  17036400  and r6, r8, r6
0003fc  37310300  beq r6, zero, 76
000400  1f030100  addli r6, r2, 0
000404  3b410100  bneq r2, zero, 80
000408  37200200  beq r4, zero, 8
00040c  1f020300  addli r4, r6, 0
000410  13635006  setle.f r6, zero, r5
000414  13e40206  setle.f r8, r5, zero
000418  17036400  and r6, r8, r6
00041c  3b200300  bneq r6, zero, 8
000420  1f820200  addli r4, r5, 0
000424  bf8b7cfe  blt.s r25, r7, -288
000428  1f020100  addli r4, r2, 0
00042c  5bdbffff  j -296
000430  2b04c07f  lui r8, 523264
000434  9f840200  addli r9, r5, 0
000438  37cd02fe  beq r5, zero, -176
00043c  9f040400  addli r9, r8, 0
000440  3bbd00fe  bneq r1, zero, -180
000444  dbe9ffff  j -180
000448  ab02c07f  lui r5, 523264
00044c  1f030100  addli r6, r2, 0
000450  b76e01fe  beq r2, zero, -72
000454  1f830200  addli r6, r5, 0
000458  bb5e02fe  bneq r4, zero, -76
00045c  dbf6ffff  j -76
000460  93611204  setlt.f r3, r4, r1
000464  1f810000  addli r2, r1, 0
000468  3ba00100  bneq r3, zero, 8
00046c  1f010200  addli r2, r4, 0
000470  9b319200  slli r3, r4, 9
000474  9bb29000  slli r5, r1, 9
000478  1b437201  srli r6, r4, 23
00047c  1bc47001  srli r8, r1, 23
000480  93810100  seteq r3, r3, zero
000484  93820200  seteq r5, r5, zero
000488  1b03f30f  andi r6, r6, 255
00048c  1b04f40f  andi r8, r8, 255
000490  1b73f30f  setlti r6, r6, 255
000494  1b74f40f  setlti r8, r8, 255
000498  97113300  or r3, r6, r3
00049c  97125400  or r5, r8, r5
0004a0  97813200  and r3, r5, r3
0004a4  b7f6010e  beq r3, zero, 7612
0004a8  3b87000e  bneq r1, zero, 7616
0004ac  37200200  beq r4, zero, 8
0004b0  1f820000  addli r4, r1, 0
0004b4  93602006  setle.f r1, zero, r2
0004b8  93610106  setle.f r3, r2, zero
0004bc  97801100  and r1, r3, r1
0004c0  3ba00000  bneq r1, zero, 8
0004c4  1f020100  addli r4, r2, 0
0004c8  e340affd  loadli.w r1,  -300(r30)
0004cc  73e04000  stores.w r4, 0(r1)
0004d0  00a00300  mfence { lm, sm, gm }
0004d4  80210e04  csr_set csr3, r28
0004d8  00d00100  sync_group
0004dc  e3407ffe  loadli.w r1,  -196(r30)
0004e0  bb85000e  bneq r1, zero, 7520
0004e4  efc10500  loads.w r3, 0(r11)
0004e8  efc04500  loads.w r1, 4(r11)
0004ec  13e23004  setlt.f r4, r1, r3
0004f0  1f810100  addli r2, r3, 0
0004f4  3b200200  bneq r4, zero, 8
0004f8  1f810000  addli r2, r1, 0
0004fc  1bb29100  slli r4, r3, 9
000500  9bb29000  slli r5, r1, 9
000504  1bc37101  srli r6, r3, 23
000508  1bc47001  srli r8, r1, 23
00050c  13020200  seteq r4, r4, zero
000510  93820200  seteq r5, r5, zero
000514  1b03f30f  andi r6, r6, 255
000518  1b04f40f  andi r8, r8, 255
00051c  1b73f30f  setlti r6, r6, 255
000520  1b74f40f  setlti r8, r8, 255
000524  17124300  or r4, r6, r4
000528  97125400  or r5, r8, r5
00052c  17025200  and r4, r4, r5
000530  b71b0210  beq r4, zero, 8932
000534  bbab0110  bneq r3, zero, 8936
000538  37a00000  beq r1, zero, 8
00053c  9f800100  addli r1, r3, 0
000540  93612006  setle.f r3, zero, r2
000544  13620106  setle.f r4, r2, zero
000548  97013200  and r3, r4, r3
00054c  3ba00100  bneq r3, zero, 8
000550  9f000100  addli r1, r2, 0
000554  efca8500  loads.w r21, 8(r11)
000558  1f810000  addli r2, r1, 0
00055c  93e11a04  setlt.f r3, r21, r1
000560  3ba00100  bneq r3, zero, 8
000564  1f810a00  addli r2, r21, 0
000568  9bb19a00  slli r3, r21, 9
00056c  1bb29000  slli r4, r1, 9
000570  9bc27a01  srli r5, r21, 23
000574  1bc37001  srli r6, r1, 23
000578  93810100  seteq r3, r3, zero
00057c  13020200  seteq r4, r4, zero
000580  9b82f20f  andi r5, r5, 255
000584  1b03f30f  andi r6, r6, 255
000588  9bf2f20f  setlti r5, r5, 255
00058c  1b73f30f  setlti r6, r6, 255
000590  97913200  or r3, r5, r3
000594  17124300  or r4, r6, r4
000598  97013200  and r3, r4, r3
00059c  37ba0110  beq r3, zero, 8844
0005a0  3bca0010  bneq r1, zero, 8848
0005a4  37a00a00  beq r21, zero, 8
0005a8  9f8a0000  addli r21, r1, 0
0005ac  93602006  setle.f r1, zero, r2
0005b0  93610106  setle.f r3, r2, zero
0005b4  e7464ffd  storeli.w r20, -404(r30)
0005b8  67070ffd  storeli.w r16, -400(r30)
0005bc  6747affd  storeli.w r26, -396(r30)
0005c0  97801100  and r1, r3, r1
0005c4  3ba00000  bneq r1, zero, 8
0005c8  9f0a0100  addli r21, r2, 0
0005cc  6fc20504  loads.w r4, 64(r11)
0005d0  6fc8c500  loads.w r16, 12(r11)
0005d4  6fc50501  loads.w r10, 16(r11)
0005d8  efcb4501  loads.w r23, 20(r11)
0005dc  6fc18501  loads.w r2, 24(r11)
0005e0  efc0c501  loads.w r1, 28(r11)
0005e4  6fc40502  loads.w r8, 32(r11)
0005e8  6fc34502  loads.w r6, 36(r11)
0005ec  efc18502  loads.w r3, 40(r11)
0005f0  6fc6c502  loads.w r12, 44(r11)
0005f4  efc60503  loads.w r13, 48(r11)
0005f8  efcd4503  loads.w r27, 52(r11)
0005fc  6fce8503  loads.w r28, 56(r11)
000600  6fcbc503  loads.w r22, 60(r11)
000604  1f8d0a00  addli r26, r21, 0
000608  e70d4ffc  storeli.w r4, -296(r30)
00060c  6fc24504  loads.w r4, 68(r11)
000610  136a5805  setlt.f r20, r16, r21
000614  67004ffc  storeli.w r4, -512(r30)
000618  6fc28504  loads.w r4, 72(r11)
00061c  e74d4ffc  storeli.w r4, -292(r30)
000620  6fc2c504  loads.w r4, 76(r11)
000624  67404ffc  storeli.w r4, -508(r30)
000628  6fc20505  loads.w r4, 80(r11)
00062c  670e4ffc  storeli.w r4, -288(r30)
000630  6fc24505  loads.w r4, 84(r11)
000634  e7004ffc  storeli.w r4, -504(r30)
000638  6fc28505  loads.w r4, 88(r11)
00063c  674e4ffc  storeli.w r4, -284(r30)
000640  6fc2c505  loads.w r4, 92(r11)
000644  e7404ffc  storeli.w r4, -500(r30)
000648  6fc20506  loads.w r4, 96(r11)
00064c  e70e4ffc  storeli.w r4, -280(r30)
000650  6fc24506  loads.w r4, 100(r11)
000654  e74e4ffc  storeli.w r4, -276(r30)
000658  6fc28506  loads.w r4, 104(r11)
00065c  67014ffc  storeli.w r4, -496(r30)
000660  6fc2c506  loads.w r4, 108(r11)
000664  670f4ffc  storeli.w r4, -272(r30)
000668  6fc20507  loads.w r4, 112(r11)
00066c  67414ffc  storeli.w r4, -492(r30)
000670  6fc24507  loads.w r4, 116(r11)
000674  674f4ffc  storeli.w r4, -268(r30)
000678  6fc28507  loads.w r4, 120(r11)
00067c  e7014ffc  storeli.w r4, -488(r30)
000680  6fc2c507  loads.w r4, 124(r11)
000684  e70f4ffc  storeli.w r4, -264(r30)
000688  6fc20508  loads.w r4, 128(r11)
00068c  e7414ffc  storeli.w r4, -484(r30)
000690  6fc24508  loads.w r4, 132(r11)
000694  e74f4ffc  storeli.w r4, -260(r30)
000698  6fc28508  loads.w r4, 136(r11)
00069c  67024ffc  storeli.w r4, -480(r30)
0006a0  6fc2c508  loads.w r4, 140(r11)
0006a4  67004ffe  storeli.w r4, -256(r30)
0006a8  6fc20509  loads.w r4, 144(r11)
0006ac  67424ffc  storeli.w r4, -476(r30)
0006b0  6fc24509  loads.w r4, 148(r11)
0006b4  67404ffe  storeli.w r4, -252(r30)
0006b8  6fc28509  loads.w r4, 152(r11)
0006bc  e7024ffc  storeli.w r4, -472(r30)
0006c0  6fc2c509  loads.w r4, 156(r11)
0006c4  e7004ffe  storeli.w r4, -248(r30)
0006c8  6fc2050a  loads.w r4, 160(r11)
0006cc  e7424ffc  storeli.w r4, -468(r30)
0006d0  6fc2450a  loads.w r4, 164(r11)
0006d4  e7404ffe  storeli.w r4, -244(r30)
0006d8  6fc2850a  loads.w r4, 168(r11)
0006dc  67034ffc  storeli.w r4, -464(r30)
0006e0  6fc2c50a  loads.w r4, 172(r11)
0006e4  67014ffe  storeli.w r4, -240(r30)
0006e8  6fc2050b  loads.w r4, 176(r11)
0006ec  67434ffc  storeli.w r4, -460(r30)
0006f0  6fc2450b  loads.w r4, 180(r11)
0006f4  67414ffe  storeli.w r4, -236(r30)
0006f8  6fc2850b  loads.w r4, 184(r11)
0006fc  e7034ffc  storeli.w r4, -456(r30)
000700  6fc2c50b  loads.w r4, 188(r11)
000704  e7014ffe  storeli.w r4, -232(r30)
000708  6fc2050c  loads.w r4, 192(r11)
00070c  e7434ffc  storeli.w r4, -452(r30)
000710  6fc2450c  loads.w r4, 196(r11)
000714  67024ffe  storeli.w r4, -224(r30)
000718  6fc2850c  loads.w r4, 200(r11)
00071c  67044ffc  storeli.w r4, -448(r30)
000720  6fc2c50c  loads.w r4, 204(r11)
000724  67444ffc  storeli.w r4, -444(r30)
000728  6fc2050d  loads.w r4, 208(r11)
00072c  67424ffe  storeli.w r4, -220(r30)
000730  6fc2450d  loads.w r4, 212(r11)
000734  e7024ffe  storeli.w r4, -216(r30)
000738  6fc2850d  loads.w r4, 216(r11)
00073c  e7044ffc  storeli.w r4, -440(r30)
000740  6fc2c50d  loads.w r4, 220(r11)
000744  e7424ffe  storeli.w r4, -212(r30)
000748  6fc2050e  loads.w r4, 224(r11)
00074c  e7444ffc  storeli.w r4, -436(r30)
000750  6fc2450e  loads.w r4, 228(r11)
000754  67054ffc  storeli.w r4, -432(r30)
000758  6fc2850e  loads.w r4, 232(r11)
00075c  67454ffc  storeli.w r4, -428(r30)
000760  6fc2c50e  loads.w r4, 236(r11)
000764  e7054ffc  storeli.w r4, -424(r30)
000768  6fc2050f  loads.w r4, 240(r11)
00076c  e7454ffc  storeli.w r4, -420(r30)
000770  6fc2450f  loads.w r4, 244(r11)
000774  67064ffc  storeli.w r4, -416(r30)
000778  6fc2850f  loads.w r4, 248(r11)
00077c  67464ffc  storeli.w r4, -412(r30)
000780  6fc2c50f  loads.w r4, 252(r11)
000784  e7064ffc  storeli.w r4, -408(r30)
000788  3b200a00  bneq r20, zero, 8
00078c  1f0d0800  addli r26, r16, 0
000790  1b3a9800  slli r20, r16, 9
000794  9bb29a00  slli r5, r21, 9
000798  9b447801  srli r9, r16, 23
00079c  1bc27a01  srli r4, r21, 23
0007a0  130a0a00  seteq r20, r20, zero
0007a4  93820200  seteq r5, r5, zero
0007a8  9b84f40f  andi r9, r9, 255
0007ac  1b02f20f  andi r4, r4, 255
0007b0  9bf4f40f  setlti r9, r9, 255
0007b4  1b72f20f  setlti r4, r4, 255
0007b8  97944401  or r9, r9, r20
0007bc  17125200  or r4, r4, r5
0007c0  17029200  and r4, r4, r9
0007c4  b7610210  beq r4, zero, 8312
0007c8  bbf10a10  bneq r21, zero, 8316
0007cc  37200800  beq r16, zero, 8
0007d0  1f880a00  addli r16, r21, 0
0007d4  1362a007  setle.f r4, zero, r26
0007d8  93620d06  setle.f r5, r26, zero
0007dc  17824200  and r4, r5, r4
0007e0  3b200200  bneq r4, zero, 8
0007e4  1f080d00  addli r16, r26, 0
0007e8  13620505  setlt.f r4, r10, r16
0007ec  9f0a0800  addli r21, r16, 0
0007f0  3b200200  bneq r4, zero, 8
0007f4  9f0a0500  addli r21, r10, 0
0007f8  1b329500  slli r4, r10, 9
0007fc  9b329800  slli r5, r16, 9
000800  9b447501  srli r9, r10, 23
000804  1b4a7801  srli r20, r16, 23
000808  634deffc  loadli.w r26,  -396(r30)
00080c  13020200  seteq r4, r4, zero
000810  93820200  seteq r5, r5, zero
000814  9b84f40f  andi r9, r9, 255
000818  1b0afa0f  andi r20, r20, 255
00081c  9bf4f40f  setlti r9, r9, 255
000820  1b7afa0f  setlti r20, r20, 255
000824  17924400  or r4, r9, r4
000828  97125a00  or r5, r20, r5
00082c  17824200  and r4, r5, r4
000830  b7000210  beq r4, zero, 8224
000834  bb100810  bneq r16, zero, 8228
000838  37200500  beq r10, zero, 8
00083c  1f050800  addli r10, r16, 0
000840  13625007  setle.f r4, zero, r21
000844  93e20a06  setle.f r5, r21, zero
000848  17824200  and r4, r5, r4
00084c  3b200200  bneq r4, zero, 8
000850  1f850a00  addli r10, r21, 0
000854  13e2ab04  setlt.f r4, r23, r10
000858  1f080500  addli r16, r10, 0
00085c  3b200200  bneq r4, zero, 8
000860  1f880b00  addli r16, r23, 0
000864  1bb29b00  slli r4, r23, 9
000868  9b329500  slli r5, r10, 9
00086c  9bc47b01  srli r9, r23, 23
000870  1b4a7501  srli r20, r10, 23
000874  e30a2ffc  loadli.w r21,  -496(r30)
000878  13020200  seteq r4, r4, zero
00087c  93820200  seteq r5, r5, zero
000880  9b84f40f  andi r9, r9, 255
000884  1b0afa0f  andi r20, r20, 255
000888  9bf4f40f  setlti r9, r9, 255
00088c  1b7afa0f  setlti r20, r20, 255
000890  17924400  or r4, r9, r4
000894  97125a00  or r5, r20, r5
000898  17824200  and r4, r5, r4
00089c  372f020e  beq r4, zero, 8136
0008a0  630a1ffc  loadli.w r20,  -504(r30)
0008a4  3b3f050e  bneq r10, zero, 8140
0008a8  37a00b00  beq r23, zero, 8
0008ac  9f0b0500  addli r23, r10, 0
0008b0  13620007  setle.f r4, zero, r16
0008b4  93620806  setle.f r5, r16, zero
0008b8  17824200  and r4, r5, r4
0008bc  3b200200  bneq r4, zero, 8
0008c0  9f0b0800  addli r23, r16, 0
0008c4  13627105  setlt.f r4, r2, r23
0008c8  1f850b00  addli r10, r23, 0
0008cc  3b200200  bneq r4, zero, 8
0008d0  1f050100  addli r10, r2, 0
0008d4  1b329100  slli r4, r2, 9
0008d8  9bb29b00  slli r5, r23, 9
0008dc  9b447101  srli r9, r2, 23
0008e0  1bc87b01  srli r16, r23, 23
0008e4  13020200  seteq r4, r4, zero
0008e8  93820200  seteq r5, r5, zero
0008ec  9b84f40f  andi r9, r9, 255
0008f0  1b08f80f  andi r16, r16, 255
0008f4  9bf4f40f  setlti r9, r9, 255
0008f8  1b78f80f  setlti r16, r16, 255
0008fc  17924400  or r4, r9, r4
000900  97125800  or r5, r16, r5
000904  17824200  and r4, r5, r4
000908  b75d020e  beq r4, zero, 8052
00090c  bbed0b0e  bneq r23, zero, 8056
000910  37200100  beq r2, zero, 8
000914  1f810b00  addli r2, r23, 0
000918  1362a006  setle.f r4, zero, r10
00091c  93620506  setle.f r5, r10, zero
000920  17824200  and r4, r5, r4
000924  3b200200  bneq r4, zero, 8
000928  1f010500  addli r2, r10, 0
00092c  13e22004  setlt.f r4, r1, r2
000930  e30b3ffc  loadli.w r23,  -488(r30)
000934  1f050100  addli r10, r2, 0
000938  3b200200  bneq r4, zero, 8
00093c  1f850000  addli r10, r1, 0
000940  1bb29000  slli r4, r1, 9
000944  9b329100  slli r5, r2, 9
000948  9bc47001  srli r9, r1, 23
00094c  1b487101  srli r16, r2, 23
000950  13020200  seteq r4, r4, zero
000954  93820200  seteq r5, r5, zero
000958  9b84f40f  andi r9, r9, 255
00095c  1b08f80f  andi r16, r16, 255
000960  9bf4f40f  setlti r9, r9, 255
000964  1b78f80f  setlti r16, r16, 255
000968  17924400  or r4, r9, r4
00096c  97125800  or r5, r16, r5
000970  17824200  and r4, r5, r4
000974  377c020e  beq r4, zero, 7964
000978  63481ffc  loadli.w r16,  -500(r30)
00097c  bb0c010e  bneq r2, zero, 7968
000980  37a00000  beq r1, zero, 8
000984  9f000100  addli r1, r2, 0
000988  1361a006  setle.f r2, zero, r10
00098c  13620506  setle.f r4, r10, zero
000990  17012200  and r2, r4, r2
000994  3b200100  bneq r2, zero, 8
000998  9f000500  addli r1, r10, 0
00099c  13621404  setlt.f r4, r8, r1
0009a0  1f810000  addli r2, r1, 0
0009a4  3b200200  bneq r4, zero, 8
0009a8  1f010400  addli r2, r8, 0
0009ac  1b329400  slli r4, r8, 9
0009b0  9bb29000  slli r5, r1, 9
0009b4  9b447401  srli r9, r8, 23
0009b8  1bc57001  srli r10, r1, 23
0009bc  13020200  seteq r4, r4, zero
0009c0  93820200  seteq r5, r5, zero
0009c4  9b84f40f  andi r9, r9, 255
0009c8  1b05f50f  andi r10, r10, 255
0009cc  9bf4f40f  setlti r9, r9, 255
0009d0  1b75f50f  setlti r10, r10, 255
0009d4  17924400  or r4, r9, r4
0009d8  97125500  or r5, r10, r5
0009dc  17824200  and r4, r5, r4
0009e0  372b020e  beq r4, zero, 7880
0009e4  63450ffc  loadli.w r10,  -508(r30)
0009e8  3bbb000e  bneq r1, zero, 7884
0009ec  37200400  beq r8, zero, 8
0009f0  1f840000  addli r8, r1, 0
0009f4  93602006  setle.f r1, zero, r2
0009f8  13620106  setle.f r4, r2, zero
0009fc  97001200  and r1, r4, r1
000a00  3ba00000  bneq r1, zero, 8
000a04  1f040100  addli r8, r2, 0
000a08  13618304  setlt.f r2, r6, r8
000a0c  9f000400  addli r1, r8, 0
000a10  3b200100  bneq r2, zero, 8
000a14  9f000300  addli r1, r6, 0
000a18  1b319300  slli r2, r6, 9
000a1c  1b329400  slli r4, r8, 9
000a20  9b427301  srli r5, r6, 23
000a24  9b447401  srli r9, r8, 23
000a28  13010100  seteq r2, r2, zero
000a2c  13020200  seteq r4, r4, zero
000a30  9b82f20f  andi r5, r5, 255
000a34  9b84f40f  andi r9, r9, 255
000a38  9bf2f20f  setlti r5, r5, 255
000a3c  9bf4f40f  setlti r9, r9, 255
000a40  17912200  or r2, r5, r2
000a44  17924400  or r4, r9, r4
000a48  17012200  and r2, r4, r2
000a4c  b759010e  beq r2, zero, 7796
000a50  e3040ffc  loadli.w r9,  -512(r30)
000a54  bb69040e  bneq r8, zero, 7800
000a58  37200300  beq r6, zero, 8
000a5c  1f030400  addli r6, r8, 0
000a60  13611006  setle.f r2, zero, r1
000a64  13e20006  setle.f r4, r1, zero
000a68  17012200  and r2, r4, r2
000a6c  3b200100  bneq r2, zero, 8
000a70  1f830000  addli r6, r1, 0
000a74  13e16104  setlt.f r2, r3, r6
000a78  9f000300  addli r1, r6, 0
000a7c  3b200100  bneq r2, zero, 8
000a80  9f800100  addli r1, r3, 0
000a84  1bb19100  slli r2, r3, 9
000a88  1b329300  slli r4, r6, 9
000a8c  9bc27101  srli r5, r3, 23
000a90  1b447301  srli r8, r6, 23
000a94  13010100  seteq r2, r2, zero
000a98  13020200  seteq r4, r4, zero
000a9c  9b82f20f  andi r5, r5, 255
000aa0  1b04f40f  andi r8, r8, 255
000aa4  9bf2f20f  setlti r5, r5, 255
000aa8  1b74f40f  setlti r8, r8, 255
000aac  17912200  or r2, r5, r2
000ab0  17124400  or r4, r8, r4
000ab4  17012200  and r2, r4, r2
000ab8  b708010e  beq r2, zero, 7712
000abc  bb18030e  bneq r6, zero, 7716
000ac0  37a00100  beq r3, zero, 8
000ac4  9f010300  addli r3, r6, 0
000ac8  13611006  setle.f r2, zero, r1
000acc  13e20006  setle.f r4, r1, zero
000ad0  17012200  and r2, r4, r2
000ad4  3b200100  bneq r2, zero, 8
000ad8  9f810000  addli r3, r1, 0
000adc  13613604  setlt.f r2, r12, r3
000ae0  9f800100  addli r1, r3, 0
000ae4  3b200100  bneq r2, zero, 8
000ae8  9f000600  addli r1, r12, 0
000aec  1b319600  slli r2, r12, 9
000af0  1bb29100  slli r4, r3, 9
000af4  9b427601  srli r5, r12, 23
000af8  1bc37101  srli r6, r3, 23
000afc  13010100  seteq r2, r2, zero
000b00  13020200  seteq r4, r4, zero
000b04  9b82f20f  andi r5, r5, 255
000b08  1b03f30f  andi r6, r6, 255
000b0c  9bf2f20f  setlti r5, r5, 255
000b10  1b73f30f  setlti r6, r6, 255
000b14  17912200  or r2, r5, r2
000b18  17124300  or r4, r6, r4
000b1c  17012200  and r2, r4, r2
000b20  3737010e  beq r2, zero, 7628
000b24  3bc7010e  bneq r3, zero, 7632
000b28  37200600  beq r12, zero, 8
000b2c  1f860100  addli r12, r3, 0
000b30  13611006  setle.f r2, zero, r1
000b34  93e10006  setle.f r3, r1, zero
000b38  17812100  and r2, r3, r2
000b3c  3b200100  bneq r2, zero, 8
000b40  1f860000  addli r12, r1, 0
000b44  13e1c604  setlt.f r2, r13, r12
000b48  9f000600  addli r1, r12, 0
000b4c  3b200100  bneq r2, zero, 8
000b50  9f800600  addli r1, r13, 0
000b54  1bb19600  slli r2, r13, 9
000b58  9b319600  slli r3, r12, 9
000b5c  1bc27601  srli r4, r13, 23
000b60  9b427601  srli r5, r12, 23
000b64  13010100  seteq r2, r2, zero
000b68  93810100  seteq r3, r3, zero
000b6c  1b02f20f  andi r4, r4, 255
000b70  9b82f20f  andi r5, r5, 255
000b74  1b72f20f  setlti r4, r4, 255
000b78  9bf2f20f  setlti r5, r5, 255
000b7c  17112200  or r2, r4, r2
000b80  97913200  or r3, r5, r3
000b84  17812100  and r2, r3, r2
000b88  b765010e  beq r2, zero, 7544
000b8c  bb75060e  bneq r12, zero, 7548
000b90  37a00600  beq r13, zero, 8
000b94  9f060600  addli r13, r12, 0
000b98  13611006  setle.f r2, zero, r1
000b9c  93e10006  setle.f r3, r1, zero
000ba0  17812100  and r2, r3, r2
000ba4  3b200100  bneq r2, zero, 8
000ba8  9f860000  addli r13, r1, 0
000bac  13e1dd04  setlt.f r2, r27, r13
000bb0  63463ffc  loadli.w r12,  -484(r30)
000bb4  9f800600  addli r1, r13, 0
000bb8  3b200100  bneq r2, zero, 8
000bbc  9f800d00  addli r1, r27, 0
000bc0  1bb19d00  slli r2, r27, 9
000bc4  9bb19600  slli r3, r13, 9
000bc8  1bc27d01  srli r4, r27, 23
000bcc  9bc27601  srli r5, r13, 23
000bd0  13010100  seteq r2, r2, zero
000bd4  93810100  seteq r3, r3, zero
000bd8  1b02f20f  andi r4, r4, 255
000bdc  9b82f20f  andi r5, r5, 255
000be0  1b72f20f  setlti r4, r4, 255
000be4  9bf2f20f  setlti r5, r5, 255
000be8  17112200  or r2, r4, r2
000bec  97913200  or r3, r5, r3
000bf0  17812100  and r2, r3, r2
000bf4  b704010e  beq r2, zero, 7456
000bf8  bb94060e  bneq r13, zero, 7460
000bfc  37a00d00  beq r27, zero, 8
000c00  9f8d0600  addli r27, r13, 0
000c04  13611006  setle.f r2, zero, r1
000c08  93e10006  setle.f r3, r1, zero
000c0c  17812100  and r2, r3, r2
000c10  3b200100  bneq r2, zero, 8
000c14  9f8d0000  addli r27, r1, 0
000c18  1361be05  setlt.f r2, r28, r27
000c1c  e3462ffc  loadli.w r13,  -492(r30)
000c20  9f800d00  addli r1, r27, 0
000c24  3b200100  bneq r2, zero, 8
000c28  9f000e00  addli r1, r28, 0
000c2c  1b319e00  slli r2, r28, 9
000c30  9bb19d00  slli r3, r27, 9
000c34  1b427e01  srli r4, r28, 23
000c38  9bc27d01  srli r5, r27, 23
000c3c  13010100  seteq r2, r2, zero
000c40  93810100  seteq r3, r3, zero
000c44  1b02f20f  andi r4, r4, 255
000c48  9b82f20f  andi r5, r5, 255
000c4c  1b72f20f  setlti r4, r4, 255
000c50  9bf2f20f  setlti r5, r5, 255
000c54  17112200  or r2, r4, r2
000c58  97913200  or r3, r5, r3
000c5c  17812100  and r2, r3, r2
000c60  3723010e  beq r2, zero, 7368
000c64  3bb30d0e  bneq r27, zero, 7372
000c68  37200e00  beq r28, zero, 8
000c6c  1f8e0d00  addli r28, r27, 0
000c70  13611006  setle.f r2, zero, r1
000c74  93e10006  setle.f r3, r1, zero
000c78  17812100  and r2, r3, r2
000c7c  3b200100  bneq r2, zero, 8
000c80  1f8e0000  addli r28, r1, 0
000c84  1361cb05  setlt.f r2, r22, r28
000c88  e30d9ffc  loadli.w r27,  -440(r30)
000c8c  9f000e00  addli r1, r28, 0
000c90  3b200100  bneq r2, zero, 8
000c94  9f000b00  addli r1, r22, 0
000c98  1b319b00  slli r2, r22, 9
000c9c  9b319e00  slli r3, r28, 9
000ca0  1b427b01  srli r4, r22, 23
000ca4  9b427e01  srli r5, r28, 23
000ca8  13010100  seteq r2, r2, zero
000cac  93810100  seteq r3, r3, zero
000cb0  1b02f20f  andi r4, r4, 255
000cb4  9b82f20f  andi r5, r5, 255
000cb8  1b72f20f  setlti r4, r4, 255
000cbc  9bf2f20f  setlti r5, r5, 255
000cc0  17112200  or r2, r4, r2
000cc4  97913200  or r3, r5, r3
000cc8  17812100  and r2, r3, r2
000ccc  b741010e  beq r2, zero, 7280
000cd0  6302bffd  loadli.w r4,  -296(r30)
000cd4  bb510e0e  bneq r28, zero, 7284
000cd8  37200b00  beq r22, zero, 8
000cdc  1f0b0e00  addli r22, r28, 0
000ce0  13611006  setle.f r2, zero, r1
000ce4  93e10006  setle.f r3, r1, zero
000ce8  17812100  and r2, r3, r2
000cec  3b200100  bneq r2, zero, 8
000cf0  1f8b0000  addli r22, r1, 0
000cf4  13616205  setlt.f r2, r4, r22
000cf8  634e4ffc  loadli.w r28,  -476(r30)
000cfc  9f000b00  addli r1, r22, 0
000d00  3b200100  bneq r2, zero, 8
000d04  9f000200  addli r1, r4, 0
000d08  1b319200  slli r2, r4, 9
000d0c  9b319b00  slli r3, r22, 9
000d10  1b427201  srli r4, r4, 23
000d14  9b427b01  srli r5, r22, 23
000d18  13010100  seteq r2, r2, zero
000d1c  93810100  seteq r3, r3, zero
000d20  1b02f20f  andi r4, r4, 255
000d24  9b82f20f  andi r5, r5, 255
000d28  1b72f20f  setlti r4, r4, 255
000d2c  9bf2f20f  setlti r5, r5, 255
000d30  17112200  or r2, r4, r2
000d34  97913200  or r3, r5, r3
000d38  17812100  and r2, r3, r2
000d3c  3760010e  beq r2, zero, 7192
000d40  3b700b0e  bneq r22, zero, 7196
000d44  e302bffd  loadli.w r5,  -296(r30)
000d48  37a00200  beq r5, zero, 8
000d4c  9f020b00  addli r5, r22, 0
000d50  13611006  setle.f r2, zero, r1
000d54  93e10006  setle.f r3, r1, zero
000d58  17812100  and r2, r3, r2
000d5c  3b200100  bneq r2, zero, 8
000d60  9f820000  addli r5, r1, 0
000d64  13e15404  setlt.f r2, r9, r5
000d68  634b9ffc  loadli.w r22,  -436(r30)
000d6c  9f800200  addli r1, r5, 0
000d70  3b200100  bneq r2, zero, 8
000d74  9f800400  addli r1, r9, 0
000d78  1bb19400  slli r2, r9, 9
000d7c  9bb19200  slli r3, r5, 9
000d80  1bc27401  srli r4, r9, 23
000d84  1f840200  addli r8, r5, 0
000d88  9bc27201  srli r5, r5, 23
000d8c  13010100  seteq r2, r2, zero
000d90  93810100  seteq r3, r3, zero
000d94  1b02f20f  andi r4, r4, 255
000d98  9b82f20f  andi r5, r5, 255
000d9c  1b72f20f  setlti r4, r4, 255
000da0  9bf2f20f  setlti r5, r5, 255
000da4  17112200  or r2, r4, r2
000da8  97913200  or r3, r5, r3
000dac  17812100  and r2, r3, r2
000db0  b77e010c  beq r2, zero, 7100
000db4  6342bffd  loadli.w r4,  -292(r30)
000db8  3b0f040c  bneq r8, zero, 7104
000dbc  37a00400  beq r9, zero, 8
000dc0  9f040400  addli r9, r8, 0
000dc4  13611006  setle.f r2, zero, r1
000dc8  93e10006  setle.f r3, r1, zero
000dcc  17812100  and r2, r3, r2
000dd0  3b200100  bneq r2, zero, 8
000dd4  9f840000  addli r9, r1, 0
000dd8  13619204  setlt.f r2, r4, r9
000ddc  9f800400  addli r1, r9, 0
000de0  3b200100  bneq r2, zero, 8
000de4  9f000200  addli r1, r4, 0
000de8  1b319200  slli r2, r4, 9
000dec  9bb19400  slli r3, r9, 9
000df0  1b427201  srli r4, r4, 23
000df4  9bc27401  srli r5, r9, 23
000df8  13010100  seteq r2, r2, zero
000dfc  93810100  seteq r3, r3, zero
000e00  1b02f20f  andi r4, r4, 255
000e04  9b82f20f  andi r5, r5, 255
000e08  1b72f20f  setlti r4, r4, 255
000e0c  9bf2f20f  setlti r5, r5, 255
000e10  17112200  or r2, r4, r2
000e14  97913200  or r3, r5, r3
000e18  17812100  and r2, r3, r2
000e1c  b72d010c  beq r2, zero, 7016
000e20  bbbd040c  bneq r9, zero, 7020
000e24  e342bffd  loadli.w r5,  -292(r30)
000e28  37a00200  beq r5, zero, 8
000e2c  9f820400  addli r5, r9, 0
000e30  13611006  setle.f r2, zero, r1
000e34  93e10006  setle.f r3, r1, zero
000e38  17812100  and r2, r3, r2
000e3c  3b200100  bneq r2, zero, 8
000e40  9f820000  addli r5, r1, 0
000e44  13615504  setlt.f r2, r10, r5
000e48  9f800200  addli r1, r5, 0
000e4c  3b200100  bneq r2, zero, 8
000e50  9f000500  addli r1, r10, 0
000e54  1b319500  slli r2, r10, 9
000e58  9bb19200  slli r3, r5, 9
000e5c  1b427501  srli r4, r10, 23
000e60  9f840200  addli r9, r5, 0
000e64  9bc27201  srli r5, r5, 23
000e68  13010100  seteq r2, r2, zero
000e6c  93810100  seteq r3, r3, zero
000e70  1b02f20f  andi r4, r4, 255
000e74  9b82f20f  andi r5, r5, 255
000e78  1b72f20f  setlti r4, r4, 255
000e7c  9bf2f20f  setlti r5, r5, 255
000e80  17112200  or r2, r4, r2
000e84  97913200  or r3, r5, r3
000e88  17812100  and r2, r3, r2
000e8c  374c010c  beq r2, zero, 6928
000e90  6302cffd  loadli.w r4,  -288(r30)
000e94  3bdc040c  bneq r9, zero, 6932
000e98  37200500  beq r10, zero, 8
000e9c  1f850400  addli r10, r9, 0
000ea0  13611006  setle.f r2, zero, r1
000ea4  93e10006  setle.f r3, r1, zero
000ea8  17812100  and r2, r3, r2
000eac  3b200100  bneq r2, zero, 8
000eb0  1f850000  addli r10, r1, 0
000eb4  1361a204  setlt.f r2, r4, r10
000eb8  9f000500  addli r1, r10, 0
000ebc  3b200100  bneq r2, zero, 8
000ec0  9f000200  addli r1, r4, 0
000ec4  1b319200  slli r2, r4, 9
000ec8  9b319500  slli r3, r10, 9
000ecc  1b427201  srli r4, r4, 23
000ed0  9b427501  srli r5, r10, 23
000ed4  13010100  seteq r2, r2, zero
000ed8  93810100  seteq r3, r3, zero
000edc  1b02f20f  andi r4, r4, 255
000ee0  9b82f20f  andi r5, r5, 255
000ee4  1b72f20f  setlti r4, r4, 255
000ee8  9bf2f20f  setlti r5, r5, 255
000eec  17112200  or r2, r4, r2
000ef0  97913200  or r3, r5, r3
000ef4  17812100  and r2, r3, r2
000ef8  b77a010c  beq r2, zero, 6844
000efc  3b0b050c  bneq r10, zero, 6848
000f00  e302cffd  loadli.w r5,  -288(r30)
000f04  37a00200  beq r5, zero, 8
000f08  9f020500  addli r5, r10, 0
000f0c  13611006  setle.f r2, zero, r1
000f10  93e10006  setle.f r3, r1, zero
000f14  17812100  and r2, r3, r2
000f18  3b200100  bneq r2, zero, 8
000f1c  9f820000  addli r5, r1, 0
000f20  13615a04  setlt.f r2, r20, r5
000f24  9f800200  addli r1, r5, 0
000f28  3b200100  bneq r2, zero, 8
000f2c  9f000a00  addli r1, r20, 0
000f30  1b319a00  slli r2, r20, 9
000f34  9bb19200  slli r3, r5, 9
000f38  1b427a01  srli r4, r20, 23
000f3c  1f850200  addli r10, r5, 0
000f40  9bc27201  srli r5, r5, 23
000f44  13010100  seteq r2, r2, zero
000f48  93810100  seteq r3, r3, zero
000f4c  1b02f20f  andi r4, r4, 255
000f50  9b82f20f  andi r5, r5, 255
000f54  1b72f20f  setlti r4, r4, 255
000f58  9bf2f20f  setlti r5, r5, 255
000f5c  17112200  or r2, r4, r2
000f60  97913200  or r3, r5, r3
000f64  17812100  and r2, r3, r2
000f68  b719010c  beq r2, zero, 6756
000f6c  6342cffd  loadli.w r4,  -284(r30)
000f70  bb29050c  bneq r10, zero, 6760
000f74  37200a00  beq r20, zero, 8
000f78  1f0a0500  addli r20, r10, 0
000f7c  13611006  setle.f r2, zero, r1
000f80  93e10006  setle.f r3, r1, zero
000f84  17812100  and r2, r3, r2
000f88  3b200100  bneq r2, zero, 8
000f8c  1f8a0000  addli r20, r1, 0
000f90  13614205  setlt.f r2, r4, r20
000f94  9f000a00  addli r1, r20, 0
000f98  3b200100  bneq r2, zero, 8
000f9c  9f000200  addli r1, r4, 0
000fa0  1b319200  slli r2, r4, 9
000fa4  9b319a00  slli r3, r20, 9
000fa8  1b427201  srli r4, r4, 23
000fac  9b427a01  srli r5, r20, 23
000fb0  13010100  seteq r2, r2, zero
000fb4  93810100  seteq r3, r3, zero
000fb8  1b02f20f  andi r4, r4, 255
000fbc  9b82f20f  andi r5, r5, 255
000fc0  1b72f20f  setlti r4, r4, 255
000fc4  9bf2f20f  setlti r5, r5, 255
000fc8  17112200  or r2, r4, r2
000fcc  97913200  or r3, r5, r3
000fd0  17812100  and r2, r3, r2
000fd4  3748010c  beq r2, zero, 6672
000fd8  3b580a0c  bneq r20, zero, 6676
000fdc  e342cffd  loadli.w r5,  -284(r30)
000fe0  37a00200  beq r5, zero, 8
000fe4  9f020a00  addli r5, r20, 0
000fe8  13611006  setle.f r2, zero, r1
000fec  93e10006  setle.f r3, r1, zero
000ff0  17812100  and r2, r3, r2
000ff4  3b200100  bneq r2, zero, 8
000ff8  9f820000  addli r5, r1, 0
000ffc  13615804  setlt.f r2, r16, r5
001000  9f800200  addli r1, r5, 0
001004  3b200100  bneq r2, zero, 8
001008  9f000800  addli r1, r16, 0
00100c  1b319800  slli r2, r16, 9
001010  9bb19200  slli r3, r5, 9
001014  1b427801  srli r4, r16, 23
001018  1f8a0200  addli r20, r5, 0
00101c  9bc27201  srli r5, r5, 23
001020  13010100  seteq r2, r2, zero
001024  93810100  seteq r3, r3, zero
001028  1b02f20f  andi r4, r4, 255
00102c  9b82f20f  andi r5, r5, 255
001030  1b72f20f  setlti r4, r4, 255
001034  9bf2f20f  setlti r5, r5, 255
001038  17112200  or r2, r4, r2
00103c  97913200  or r3, r5, r3
001040  17812100  and r2, r3, r2
001044  b766010c  beq r2, zero, 6584
001048  6302dffd  loadli.w r4,  -280(r30)
00104c  bb760a0c  bneq r20, zero, 6588
001050  37200800  beq r16, zero, 8
001054  1f080a00  addli r16, r20, 0
001058  13611006  setle.f r2, zero, r1
00105c  93e10006  setle.f r3, r1, zero
001060  17812100  and r2, r3, r2
001064  3b200100  bneq r2, zero, 8
001068  1f880000  addli r16, r1, 0
00106c  13610205  setlt.f r2, r4, r16
001070  9f000800  addli r1, r16, 0
001074  3b200100  bneq r2, zero, 8
001078  9f000200  addli r1, r4, 0
00107c  1b319200  slli r2, r4, 9
001080  9b319800  slli r3, r16, 9
001084  1b427201  srli r4, r4, 23
001088  9b427801  srli r5, r16, 23
00108c  13010100  seteq r2, r2, zero
001090  93810100  seteq r3, r3, zero
001094  1b02f20f  andi r4, r4, 255
001098  9b82f20f  andi r5, r5, 255
00109c  1b72f20f  setlti r4, r4, 255
0010a0  9bf2f20f  setlti r5, r5, 255
0010a4  17112200  or r2, r4, r2
0010a8  97913200  or r3, r5, r3
0010ac  17812100  and r2, r3, r2
0010b0  b715010c  beq r2, zero, 6500
0010b4  6342dffd  loadli.w r4,  -276(r30)
0010b8  bb25080c  bneq r16, zero, 6504
0010bc  e302dffd  loadli.w r5,  -280(r30)
0010c0  37a00200  beq r5, zero, 8
0010c4  9f020800  addli r5, r16, 0
0010c8  13611006  setle.f r2, zero, r1
0010cc  93e10006  setle.f r3, r1, zero
0010d0  63034ffc  loadli.w r6,  -480(r30)
0010d4  17812100  and r2, r3, r2
0010d8  3b200100  bneq r2, zero, 8
0010dc  9f820000  addli r5, r1, 0
0010e0  13615204  setlt.f r2, r4, r5
0010e4  634a5ffc  loadli.w r20,  -468(r30)
0010e8  9f800200  addli r1, r5, 0
0010ec  3b200100  bneq r2, zero, 8
0010f0  9f000200  addli r1, r4, 0
0010f4  1b319200  slli r2, r4, 9
0010f8  9bb19200  slli r3, r5, 9
0010fc  1b427201  srli r4, r4, 23
001100  1f880200  addli r16, r5, 0
001104  9bc27201  srli r5, r5, 23
001108  63046ffc  loadli.w r8,  -464(r30)
00110c  13010100  seteq r2, r2, zero
001110  93810100  seteq r3, r3, zero
001114  1b02f20f  andi r4, r4, 255
001118  9b82f20f  andi r5, r5, 255
00111c  1b72f20f  setlti r4, r4, 255
001120  9bf2f20f  setlti r5, r5, 255
001124  17112200  or r2, r4, r2
001128  97913200  or r3, r5, r3
00112c  17812100  and r2, r3, r2
001130  3b200100  bneq r2, zero, 8
001134  ab00c07f  lui r1, 523264
001138  e3446ffc  loadli.w r9,  -460(r30)
00113c  37200800  beq r16, zero, 8
001140  1f880000  addli r16, r1, 0
001144  63057ffc  loadli.w r10,  -456(r30)
001148  e342dffd  loadli.w r5,  -276(r30)
00114c  37a00200  beq r5, zero, 8
001150  9f020800  addli r5, r16, 0
001154  13611006  setle.f r2, zero, r1
001158  93e10006  setle.f r3, r1, zero
00115c  1f880d00  addli r16, r27, 0
001160  17812100  and r2, r3, r2
001164  3b200100  bneq r2, zero, 8
001168  9f820000  addli r5, r1, 0
00116c  13e15a04  setlt.f r2, r21, r5
001170  9f0d0b00  addli r27, r22, 0
001174  9f800200  addli r1, r5, 0
001178  3b200100  bneq r2, zero, 8
00117c  9f800a00  addli r1, r21, 0
001180  1bb19a00  slli r2, r21, 9
001184  9bb19200  slli r3, r5, 9
001188  1bc27a01  srli r4, r21, 23
00118c  1f8b0200  addli r22, r5, 0
001190  9bc27201  srli r5, r5, 23
001194  13010100  seteq r2, r2, zero
001198  93810100  seteq r3, r3, zero
00119c  1b02f20f  andi r4, r4, 255
0011a0  9b82f20f  andi r5, r5, 255
0011a4  1b72f20f  setlti r4, r4, 255
0011a8  9bf2f20f  setlti r5, r5, 255
0011ac  17112200  or r2, r4, r2
0011b0  97913200  or r3, r5, r3
0011b4  17812100  and r2, r3, r2
0011b8  b761010c  beq r2, zero, 6264
0011bc  6302effd  loadli.w r4,  -272(r30)
0011c0  bb710b0c  bneq r22, zero, 6268
0011c4  37a00a00  beq r21, zero, 8
0011c8  9f0a0b00  addli r21, r22, 0
0011cc  13611006  setle.f r2, zero, r1
0011d0  93e10006  setle.f r3, r1, zero
0011d4  17812100  and r2, r3, r2
0011d8  3b200100  bneq r2, zero, 8
0011dc  9f8a0000  addli r21, r1, 0
0011e0  13615205  setlt.f r2, r4, r21
0011e4  9f800a00  addli r1, r21, 0
0011e8  1f8b0d00  addli r22, r27, 0
0011ec  3b200100  bneq r2, zero, 8
0011f0  9f000200  addli r1, r4, 0
0011f4  1b319200  slli r2, r4, 9
0011f8  9bb19a00  slli r3, r21, 9
0011fc  1b427201  srli r4, r4, 23
001200  9bc27a01  srli r5, r21, 23
001204  9f0d0800  addli r27, r16, 0
001208  13010100  seteq r2, r2, zero
00120c  93810100  seteq r3, r3, zero
001210  1b02f20f  andi r4, r4, 255
001214  9b82f20f  andi r5, r5, 255
001218  1b72f20f  setlti r4, r4, 255
00121c  9bf2f20f  setlti r5, r5, 255
001220  17112200  or r2, r4, r2
001224  97913200  or r3, r5, r3
001228  17812100  and r2, r3, r2
00122c  3b200100  bneq r2, zero, 8
001230  ab00c07f  lui r1, 523264
001234  1f080500  addli r16, r10, 0
001238  37a00a00  beq r21, zero, 8
00123c  9f8a0000  addli r21, r1, 0
001240  e302effd  loadli.w r5,  -272(r30)
001244  1f850400  addli r10, r9, 0
001248  37a00200  beq r5, zero, 8
00124c  9f820a00  addli r5, r21, 0
001250  13611006  setle.f r2, zero, r1
001254  93e10006  setle.f r3, r1, zero
001258  9f040400  addli r9, r8, 0
00125c  17812100  and r2, r3, r2
001260  3b200100  bneq r2, zero, 8
001264  9f820000  addli r5, r1, 0
001268  13e15604  setlt.f r2, r13, r5
00126c  9f800200  addli r1, r5, 0
001270  1f040a00  addli r8, r20, 0
001274  3b200100  bneq r2, zero, 8
001278  9f800600  addli r1, r13, 0
00127c  1bb19600  slli r2, r13, 9
001280  9bb19200  slli r3, r5, 9
001284  1bc27601  srli r4, r13, 23
001288  9f8a0200  addli r21, r5, 0
00128c  9bc27201  srli r5, r5, 23
001290  1f0a0300  addli r20, r6, 0
001294  13010100  seteq r2, r2, zero
001298  93810100  seteq r3, r3, zero
00129c  1b02f20f  andi r4, r4, 255
0012a0  9b82f20f  andi r5, r5, 255
0012a4  1b72f20f  setlti r4, r4, 255
0012a8  9bf2f20f  setlti r5, r5, 255
0012ac  17112200  or r2, r4, r2
0012b0  97913200  or r3, r5, r3
0012b4  17812100  and r2, r3, r2
0012b8  3b200100  bneq r2, zero, 8
0012bc  ab00c07f  lui r1, 523264
0012c0  6342effd  loadli.w r4,  -268(r30)
0012c4  63035ffc  loadli.w r6,  -472(r30)
0012c8  37a00a00  beq r21, zero, 8
0012cc  9f8a0000  addli r21, r1, 0
0012d0  37a00600  beq r13, zero, 8
0012d4  9f860a00  addli r13, r21, 0
0012d8  13611006  setle.f r2, zero, r1
0012dc  93e10006  setle.f r3, r1, zero
0012e0  17812100  and r2, r3, r2
0012e4  3b200100  bneq r2, zero, 8
0012e8  9f860000  addli r13, r1, 0
0012ec  1361d204  setlt.f r2, r4, r13
0012f0  9f800600  addli r1, r13, 0
0012f4  3b200100  bneq r2, zero, 8
0012f8  9f000200  addli r1, r4, 0
0012fc  1b319200  slli r2, r4, 9
001300  9bb19600  slli r3, r13, 9
001304  1b427201  srli r4, r4, 23
001308  9bc27601  srli r5, r13, 23
00130c  13010100  seteq r2, r2, zero
001310  93810100  seteq r3, r3, zero
001314  1b02f20f  andi r4, r4, 255
001318  9b82f20f  andi r5, r5, 255
00131c  1b72f20f  setlti r4, r4, 255
001320  9bf2f20f  setlti r5, r5, 255
001324  17112200  or r2, r4, r2
001328  97913200  or r3, r5, r3
00132c  17812100  and r2, r3, r2
001330  376c010a  beq r2, zero, 5912
001334  3bfc060a  bneq r13, zero, 5916
001338  e342effd  loadli.w r5,  -268(r30)
00133c  37a00200  beq r5, zero, 8
001340  9f820600  addli r5, r13, 0
001344  13611006  setle.f r2, zero, r1
001348  93e10006  setle.f r3, r1, zero
00134c  17812100  and r2, r3, r2
001350  3b200100  bneq r2, zero, 8
001354  9f820000  addli r5, r1, 0
001358  13e15b04  setlt.f r2, r23, r5
00135c  9f800200  addli r1, r5, 0
001360  3b200100  bneq r2, zero, 8
001364  9f800b00  addli r1, r23, 0
001368  1bb19b00  slli r2, r23, 9
00136c  9bb19200  slli r3, r5, 9
001370  1bc27b01  srli r4, r23, 23
001374  9f860200  addli r13, r5, 0
001378  9bc27201  srli r5, r5, 23
00137c  13010100  seteq r2, r2, zero
001380  93810100  seteq r3, r3, zero
001384  1b02f20f  andi r4, r4, 255
001388  9b82f20f  andi r5, r5, 255
00138c  1b72f20f  setlti r4, r4, 255
001390  9bf2f20f  setlti r5, r5, 255
001394  17112200  or r2, r4, r2
001398  97913200  or r3, r5, r3
00139c  17812100  and r2, r3, r2
0013a0  370b010a  beq r2, zero, 5824
0013a4  6302fffd  loadli.w r4,  -264(r30)
0013a8  3b9b060a  bneq r13, zero, 5828
0013ac  37a00b00  beq r23, zero, 8
0013b0  9f8b0600  addli r23, r13, 0
0013b4  13611006  setle.f r2, zero, r1
0013b8  93e10006  setle.f r3, r1, zero
0013bc  17812100  and r2, r3, r2
0013c0  3b200100  bneq r2, zero, 8
0013c4  9f8b0000  addli r23, r1, 0
0013c8  13617205  setlt.f r2, r4, r23
0013cc  9f800b00  addli r1, r23, 0
0013d0  3b200100  bneq r2, zero, 8
0013d4  9f000200  addli r1, r4, 0
0013d8  1b319200  slli r2, r4, 9
0013dc  9bb19b00  slli r3, r23, 9
0013e0  1b427201  srli r4, r4, 23
0013e4  9bc27b01  srli r5, r23, 23
0013e8  13010100  seteq r2, r2, zero
0013ec  93810100  seteq r3, r3, zero
0013f0  1b02f20f  andi r4, r4, 255
0013f4  9b82f20f  andi r5, r5, 255
0013f8  1b72f20f  setlti r4, r4, 255
0013fc  9bf2f20f  setlti r5, r5, 255
001400  17112200  or r2, r4, r2
001404  97913200  or r3, r5, r3
001408  17812100  and r2, r3, r2
00140c  b739010a  beq r2, zero, 5740
001410  bbc90b0a  bneq r23, zero, 5744
001414  e302fffd  loadli.w r5,  -264(r30)
001418  37a00200  beq r5, zero, 8
00141c  9f820b00  addli r5, r23, 0
001420  13611006  setle.f r2, zero, r1
001424  93e10006  setle.f r3, r1, zero
001428  17812100  and r2, r3, r2
00142c  3b200100  bneq r2, zero, 8
001430  9f820000  addli r5, r1, 0
001434  13615604  setlt.f r2, r12, r5
001438  e34baffc  loadli.w r23,  -428(r30)
00143c  9f800200  addli r1, r5, 0
001440  3b200100  bneq r2, zero, 8
001444  9f000600  addli r1, r12, 0
001448  1b319600  slli r2, r12, 9
00144c  9bb19200  slli r3, r5, 9
001450  1b427601  srli r4, r12, 23
001454  9f860200  addli r13, r5, 0
001458  9bc27201  srli r5, r5, 23
00145c  13010100  seteq r2, r2, zero
001460  93810100  seteq r3, r3, zero
001464  1b02f20f  andi r4, r4, 255
001468  9b82f20f  andi r5, r5, 255
00146c  1b72f20f  setlti r4, r4, 255
001470  9bf2f20f  setlti r5, r5, 255
001474  17112200  or r2, r4, r2
001478  97913200  or r3, r5, r3
00147c  17812100  and r2, r3, r2
001480  3748010a  beq r2, zero, 5648
001484  6342fffd  loadli.w r4,  -260(r30)
001488  3bd8060a  bneq r13, zero, 5652
00148c  37200600  beq r12, zero, 8
001490  1f860600  addli r12, r13, 0
001494  13611006  setle.f r2, zero, r1
001498  93e10006  setle.f r3, r1, zero
00149c  17812100  and r2, r3, r2
0014a0  3b200100  bneq r2, zero, 8
0014a4  1f860000  addli r12, r1, 0
0014a8  1361c204  setlt.f r2, r4, r12
0014ac  9f000600  addli r1, r12, 0
0014b0  9f860b00  addli r13, r23, 0
0014b4  3b200100  bneq r2, zero, 8
0014b8  9f000200  addli r1, r4, 0
0014bc  1b319200  slli r2, r4, 9
0014c0  9b319600  slli r3, r12, 9
0014c4  1b427201  srli r4, r4, 23
0014c8  9b427601  srli r5, r12, 23
0014cc  13010100  seteq r2, r2, zero
0014d0  93810100  seteq r3, r3, zero
0014d4  1b02f20f  andi r4, r4, 255
0014d8  9b82f20f  andi r5, r5, 255
0014dc  1b72f20f  setlti r4, r4, 255
0014e0  9bf2f20f  setlti r5, r5, 255
0014e4  17112200  or r2, r4, r2
0014e8  97913200  or r3, r5, r3
0014ec  17812100  and r2, r3, r2
0014f0  b766010a  beq r2, zero, 5560
0014f4  bb76060a  bneq r12, zero, 5564
0014f8  e342fffd  loadli.w r5,  -260(r30)
0014fc  37a00200  beq r5, zero, 8
001500  9f020600  addli r5, r12, 0
001504  13611006  setle.f r2, zero, r1
001508  93e10006  setle.f r3, r1, zero
00150c  17812100  and r2, r3, r2
001510  3b200100  bneq r2, zero, 8
001514  9f820000  addli r5, r1, 0
001518  13615a04  setlt.f r2, r20, r5
00151c  9f800200  addli r1, r5, 0
001520  3b200100  bneq r2, zero, 8
001524  9f000a00  addli r1, r20, 0
001528  1b319a00  slli r2, r20, 9
00152c  9bb19200  slli r3, r5, 9
001530  1b427a01  srli r4, r20, 23
001534  1f860200  addli r12, r5, 0
001538  9bc27201  srli r5, r5, 23
00153c  13010100  seteq r2, r2, zero
001540  93810100  seteq r3, r3, zero
001544  1b02f20f  andi r4, r4, 255
001548  9b82f20f  andi r5, r5, 255
00154c  1b72f20f  setlti r4, r4, 255
001550  9bf2f20f  setlti r5, r5, 255
001554  17112200  or r2, r4, r2
001558  97913200  or r3, r5, r3
00155c  17812100  and r2, r3, r2
001560  b705010a  beq r2, zero, 5472
001564  63020ffe  loadli.w r4,  -256(r30)
001568  bb15060a  bneq r12, zero, 5476
00156c  37200a00  beq r20, zero, 8
001570  1f0a0600  addli r20, r12, 0
001574  13611006  setle.f r2, zero, r1
001578  93e10006  setle.f r3, r1, zero
00157c  17812100  and r2, r3, r2
001580  3b200100  bneq r2, zero, 8
001584  1f8a0000  addli r20, r1, 0
001588  13614205  setlt.f r2, r4, r20
00158c  9f000a00  addli r1, r20, 0
001590  3b200100  bneq r2, zero, 8
001594  9f000200  addli r1, r4, 0
001598  1b319200  slli r2, r4, 9
00159c  9b319a00  slli r3, r20, 9
0015a0  1b427201  srli r4, r4, 23
0015a4  9b427a01  srli r5, r20, 23
0015a8  13010100  seteq r2, r2, zero
0015ac  93810100  seteq r3, r3, zero
0015b0  1b02f20f  andi r4, r4, 255
0015b4  9b82f20f  andi r5, r5, 255
0015b8  1b72f20f  setlti r4, r4, 255
0015bc  9bf2f20f  setlti r5, r5, 255
0015c0  17112200  or r2, r4, r2
0015c4  97913200  or r3, r5, r3
0015c8  17812100  and r2, r3, r2
0015cc  3734010a  beq r2, zero, 5388
0015d0  3b440a0a  bneq r20, zero, 5392
0015d4  e3020ffe  loadli.w r5,  -256(r30)
0015d8  37a00200  beq r5, zero, 8
0015dc  9f020a00  addli r5, r20, 0
0015e0  13611006  setle.f r2, zero, r1
0015e4  93e10006  setle.f r3, r1, zero
0015e8  17812100  and r2, r3, r2
0015ec  3b200100  bneq r2, zero, 8
0015f0  9f820000  addli r5, r1, 0
0015f4  13615e04  setlt.f r2, r28, r5
0015f8  630abffc  loadli.w r20,  -424(r30)
0015fc  9f800200  addli r1, r5, 0
001600  3b200100  bneq r2, zero, 8
001604  9f000e00  addli r1, r28, 0
001608  1b319e00  slli r2, r28, 9
00160c  9bb19200  slli r3, r5, 9
001610  1b427e01  srli r4, r28, 23
001614  1f860200  addli r12, r5, 0
001618  9bc27201  srli r5, r5, 23
00161c  13010100  seteq r2, r2, zero
001620  93810100  seteq r3, r3, zero
001624  1b02f20f  andi r4, r4, 255
001628  9b82f20f  andi r5, r5, 255
00162c  1b72f20f  setlti r4, r4, 255
001630  9bf2f20f  setlti r5, r5, 255
001634  17112200  or r2, r4, r2
001638  97913200  or r3, r5, r3
00163c  17812100  and r2, r3, r2
001640  b742010a  beq r2, zero, 5296
001644  63420ffe  loadli.w r4,  -252(r30)
001648  bb52060a  bneq r12, zero, 5300
00164c  37200e00  beq r28, zero, 8
001650  1f0e0600  addli r28, r12, 0
001654  13611006  setle.f r2, zero, r1
001658  93e10006  setle.f r3, r1, zero
00165c  17812100  and r2, r3, r2
001660  3b200100  bneq r2, zero, 8
001664  1f8e0000  addli r28, r1, 0
001668  1361c205  setlt.f r2, r4, r28
00166c  9f000e00  addli r1, r28, 0
001670  1f060a00  addli r12, r20, 0
001674  3b200100  bneq r2, zero, 8
001678  9f000200  addli r1, r4, 0
00167c  1b319200  slli r2, r4, 9
001680  9b319e00  slli r3, r28, 9
001684  1b427201  srli r4, r4, 23
001688  9b427e01  srli r5, r28, 23
00168c  13010100  seteq r2, r2, zero
001690  93810100  seteq r3, r3, zero
001694  1b02f20f  andi r4, r4, 255
001698  9b82f20f  andi r5, r5, 255
00169c  1b72f20f  setlti r4, r4, 255
0016a0  9bf2f20f  setlti r5, r5, 255
0016a4  17112200  or r2, r4, r2
0016a8  97913200  or r3, r5, r3
0016ac  17812100  and r2, r3, r2
0016b0  3761010a  beq r2, zero, 5208
0016b4  3b710e0a  bneq r28, zero, 5212
0016b8  e3420ffe  loadli.w r5,  -252(r30)
0016bc  37a00200  beq r5, zero, 8
0016c0  9f020e00  addli r5, r28, 0
0016c4  13611006  setle.f r2, zero, r1
0016c8  93e10006  setle.f r3, r1, zero
0016cc  17812100  and r2, r3, r2
0016d0  3b200100  bneq r2, zero, 8
0016d4  9f820000  addli r5, r1, 0
0016d8  13615304  setlt.f r2, r6, r5
0016dc  9f800200  addli r1, r5, 0
0016e0  3b200100  bneq r2, zero, 8
0016e4  9f000300  addli r1, r6, 0
0016e8  1b319300  slli r2, r6, 9
0016ec  9bb19200  slli r3, r5, 9
0016f0  1b427301  srli r4, r6, 23
0016f4  1f8e0200  addli r28, r5, 0
0016f8  9bc27201  srli r5, r5, 23
0016fc  13010100  seteq r2, r2, zero
001700  93810100  seteq r3, r3, zero
001704  1b02f20f  andi r4, r4, 255
001708  9b82f20f  andi r5, r5, 255
00170c  1b72f20f  setlti r4, r4, 255
001710  9bf2f20f  setlti r5, r5, 255
001714  17112200  or r2, r4, r2
001718  97913200  or r3, r5, r3
00171c  17812100  and r2, r3, r2
001720  3700010a  beq r2, zero, 5120
001724  63021ffe  loadli.w r4,  -248(r30)
001728  3b100e0a  bneq r28, zero, 5124
00172c  37200300  beq r6, zero, 8
001730  1f030e00  addli r6, r28, 0
001734  13611006  setle.f r2, zero, r1
001738  93e10006  setle.f r3, r1, zero
00173c  17812100  and r2, r3, r2
001740  3b200100  bneq r2, zero, 8
001744  1f830000  addli r6, r1, 0
001748  13616204  setlt.f r2, r4, r6
00174c  9f000300  addli r1, r6, 0
001750  3b200100  bneq r2, zero, 8
001754  9f000200  addli r1, r4, 0
001758  1b319200  slli r2, r4, 9
00175c  9b319300  slli r3, r6, 9
001760  1b427201  srli r4, r4, 23
001764  9b427301  srli r5, r6, 23
001768  13010100  seteq r2, r2, zero
00176c  93810100  seteq r3, r3, zero
001770  1b02f20f  andi r4, r4, 255
001774  9b82f20f  andi r5, r5, 255
001778  1b72f20f  setlti r4, r4, 255
00177c  9bf2f20f  setlti r5, r5, 255
001780  17112200  or r2, r4, r2
001784  97913200  or r3, r5, r3
001788  17812100  and r2, r3, r2
00178c  b73e0108  beq r2, zero, 5036
001790  bb4e0308  bneq r6, zero, 5040
001794  e3021ffe  loadli.w r5,  -248(r30)
001798  37a00200  beq r5, zero, 8
00179c  9f020300  addli r5, r6, 0
0017a0  13611006  setle.f r2, zero, r1
0017a4  93e10006  setle.f r3, r1, zero
0017a8  17812100  and r2, r3, r2
0017ac  3b200100  bneq r2, zero, 8
0017b0  9f820000  addli r5, r1, 0
0017b4  13615404  setlt.f r2, r8, r5
0017b8  9f800200  addli r1, r5, 0
0017bc  3b200100  bneq r2, zero, 8
0017c0  9f000400  addli r1, r8, 0
0017c4  1b319400  slli r2, r8, 9
0017c8  9bb19200  slli r3, r5, 9
0017cc  1b427401  srli r4, r8, 23
0017d0  1f830200  addli r6, r5, 0
0017d4  9bc27201  srli r5, r5, 23
0017d8  13010100  seteq r2, r2, zero
0017dc  93810100  seteq r3, r3, zero
0017e0  1b02f20f  andi r4, r4, 255
0017e4  9b82f20f  andi r5, r5, 255
0017e8  1b72f20f  setlti r4, r4, 255
0017ec  9bf2f20f  setlti r5, r5, 255
0017f0  17112200  or r2, r4, r2
0017f4  97913200  or r3, r5, r3
0017f8  17812100  and r2, r3, r2
0017fc  375d0108  beq r2, zero, 4948
001800  63421ffe  loadli.w r4,  -244(r30)
001804  3b6d0308  bneq r6, zero, 4952
001808  37200400  beq r8, zero, 8
00180c  1f040300  addli r8, r6, 0
001810  13611006  setle.f r2, zero, r1
001814  93e10006  setle.f r3, r1, zero
001818  17812100  and r2, r3, r2
00181c  3b200100  bneq r2, zero, 8
001820  1f840000  addli r8, r1, 0
001824  13618204  setlt.f r2, r4, r8
001828  63438ffc  loadli.w r6,  -444(r30)
00182c  9f000400  addli r1, r8, 0
001830  3b200100  bneq r2, zero, 8
001834  9f000200  addli r1, r4, 0
001838  1b319200  slli r2, r4, 9
00183c  9b319400  slli r3, r8, 9
001840  1b427201  srli r4, r4, 23
001844  9b427401  srli r5, r8, 23
001848  13010100  seteq r2, r2, zero
00184c  93810100  seteq r3, r3, zero
001850  1b02f20f  andi r4, r4, 255
001854  9b82f20f  andi r5, r5, 255
001858  1b72f20f  setlti r4, r4, 255
00185c  9bf2f20f  setlti r5, r5, 255
001860  17112200  or r2, r4, r2
001864  97913200  or r3, r5, r3
001868  17812100  and r2, r3, r2
00186c  b77b0108  beq r2, zero, 4860
001870  3b0c0408  bneq r8, zero, 4864
001874  e3421ffe  loadli.w r5,  -244(r30)
001878  37a00200  beq r5, zero, 8
00187c  9f020400  addli r5, r8, 0
001880  13611006  setle.f r2, zero, r1
001884  93e10006  setle.f r3, r1, zero
001888  17812100  and r2, r3, r2
00188c  3b200100  bneq r2, zero, 8
001890  9f820000  addli r5, r1, 0
001894  13e15404  setlt.f r2, r9, r5
001898  9f800200  addli r1, r5, 0
00189c  3b200100  bneq r2, zero, 8
0018a0  9f800400  addli r1, r9, 0
0018a4  1bb19400  slli r2, r9, 9
0018a8  9bb19200  slli r3, r5, 9
0018ac  1bc27401  srli r4, r9, 23
0018b0  1f840200  addli r8, r5, 0
0018b4  9bc27201  srli r5, r5, 23
0018b8  13010100  seteq r2, r2, zero
0018bc  93810100  seteq r3, r3, zero
0018c0  1b02f20f  andi r4, r4, 255
0018c4  9b82f20f  andi r5, r5, 255
0018c8  1b72f20f  setlti r4, r4, 255
0018cc  9bf2f20f  setlti r5, r5, 255
0018d0  17112200  or r2, r4, r2
0018d4  97913200  or r3, r5, r3
0018d8  17812100  and r2, r3, r2
0018dc  b71a0108  beq r2, zero, 4772
0018e0  63022ffe  loadli.w r4,  -240(r30)
0018e4  bb2a0408  bneq r8, zero, 4776
0018e8  37a00400  beq r9, zero, 8
0018ec  9f040400  addli r9, r8, 0
0018f0  13611006  setle.f r2, zero, r1
0018f4  93e10006  setle.f r3, r1, zero
0018f8  17812100  and r2, r3, r2
0018fc  3b200100  bneq r2, zero, 8
001900  9f840000  addli r9, r1, 0
001904  13619204  setlt.f r2, r4, r9
001908  63048ffc  loadli.w r8,  -448(r30)
00190c  9f800400  addli r1, r9, 0
001910  3b200100  bneq r2, zero, 8
001914  9f000200  addli r1, r4, 0
001918  1b319200  slli r2, r4, 9
00191c  9bb19400  slli r3, r9, 9
001920  1b427201  srli r4, r4, 23
001924  9bc27401  srli r5, r9, 23
001928  13010100  seteq r2, r2, zero
00192c  93810100  seteq r3, r3, zero
001930  1b02f20f  andi r4, r4, 255
001934  9b82f20f  andi r5, r5, 255
001938  1b72f20f  setlti r4, r4, 255
00193c  9bf2f20f  setlti r5, r5, 255
001940  17112200  or r2, r4, r2
001944  97913200  or r3, r5, r3
001948  17812100  and r2, r3, r2
00194c  37390108  beq r2, zero, 4684
001950  3bc90408  bneq r9, zero, 4688
001954  e3022ffe  loadli.w r5,  -240(r30)
001958  37a00200  beq r5, zero, 8
00195c  9f820400  addli r5, r9, 0
001960  13611006  setle.f r2, zero, r1
001964  93e10006  setle.f r3, r1, zero
001968  17812100  and r2, r3, r2
00196c  3b200100  bneq r2, zero, 8
001970  9f820000  addli r5, r1, 0
001974  13615504  setlt.f r2, r10, r5
001978  9f800200  addli r1, r5, 0
00197c  3b200100  bneq r2, zero, 8
001980  9f000500  addli r1, r10, 0
001984  1b319500  slli r2, r10, 9
001988  9bb19200  slli r3, r5, 9
00198c  1b427501  srli r4, r10, 23
001990  9f840200  addli r9, r5, 0
001994  9bc27201  srli r5, r5, 23
001998  13010100  seteq r2, r2, zero
00199c  93810100  seteq r3, r3, zero
0019a0  1b02f20f  andi r4, r4, 255
0019a4  9b82f20f  andi r5, r5, 255
0019a8  1b72f20f  setlti r4, r4, 255
0019ac  9bf2f20f  setlti r5, r5, 255
0019b0  17112200  or r2, r4, r2
0019b4  97913200  or r3, r5, r3
0019b8  17812100  and r2, r3, r2
0019bc  b7570108  beq r2, zero, 4596
0019c0  63422ffe  loadli.w r4,  -236(r30)
0019c4  bbe70408  bneq r9, zero, 4600
0019c8  37200500  beq r10, zero, 8
0019cc  1f850400  addli r10, r9, 0
0019d0  13611006  setle.f r2, zero, r1
0019d4  93e10006  setle.f r3, r1, zero
0019d8  17812100  and r2, r3, r2
0019dc  3b200100  bneq r2, zero, 8
0019e0  1f850000  addli r10, r1, 0
0019e4  1361a204  setlt.f r2, r4, r10
0019e8  e3447ffc  loadli.w r9,  -452(r30)
0019ec  9f000500  addli r1, r10, 0
0019f0  3b200100  bneq r2, zero, 8
0019f4  9f000200  addli r1, r4, 0
0019f8  1b319200  slli r2, r4, 9
0019fc  9b319500  slli r3, r10, 9
001a00  1b427201  srli r4, r4, 23
001a04  9b427501  srli r5, r10, 23
001a08  13010100  seteq r2, r2, zero
001a0c  93810100  seteq r3, r3, zero
001a10  1b02f20f  andi r4, r4, 255
001a14  9b82f20f  andi r5, r5, 255
001a18  1b72f20f  setlti r4, r4, 255
001a1c  9bf2f20f  setlti r5, r5, 255
001a20  17112200  or r2, r4, r2
001a24  97913200  or r3, r5, r3
001a28  17812100  and r2, r3, r2
001a2c  37760108  beq r2, zero, 4508
001a30  bb060508  bneq r10, zero, 4512
001a34  e3422ffe  loadli.w r5,  -236(r30)
001a38  37a00200  beq r5, zero, 8
001a3c  9f020500  addli r5, r10, 0
001a40  13611006  setle.f r2, zero, r1
001a44  93e10006  setle.f r3, r1, zero
001a48  17812100  and r2, r3, r2
001a4c  3b200100  bneq r2, zero, 8
001a50  9f820000  addli r5, r1, 0
001a54  13615804  setlt.f r2, r16, r5
001a58  9f800200  addli r1, r5, 0
001a5c  3b200100  bneq r2, zero, 8
001a60  9f000800  addli r1, r16, 0
001a64  1b319800  slli r2, r16, 9
001a68  9bb19200  slli r3, r5, 9
001a6c  1b427801  srli r4, r16, 23
001a70  1f850200  addli r10, r5, 0
001a74  9bc27201  srli r5, r5, 23
001a78  13010100  seteq r2, r2, zero
001a7c  93810100  seteq r3, r3, zero
001a80  1b02f20f  andi r4, r4, 255
001a84  9b82f20f  andi r5, r5, 255
001a88  1b72f20f  setlti r4, r4, 255
001a8c  9bf2f20f  setlti r5, r5, 255
001a90  17112200  or r2, r4, r2
001a94  97913200  or r3, r5, r3
001a98  17812100  and r2, r3, r2
001a9c  37150108  beq r2, zero, 4420
001aa0  63023ffe  loadli.w r4,  -232(r30)
001aa4  3b250508  bneq r10, zero, 4424
001aa8  37200800  beq r16, zero, 8
001aac  1f080500  addli r16, r10, 0
001ab0  13611006  setle.f r2, zero, r1
001ab4  93e10006  setle.f r3, r1, zero
001ab8  17812100  and r2, r3, r2
001abc  3b200100  bneq r2, zero, 8
001ac0  1f880000  addli r16, r1, 0
001ac4  13610205  setlt.f r2, r4, r16
001ac8  9f000800  addli r1, r16, 0
001acc  3b200100  bneq r2, zero, 8
001ad0  9f000200  addli r1, r4, 0
001ad4  1b319200  slli r2, r4, 9
001ad8  9b319800  slli r3, r16, 9
001adc  1b427201  srli r4, r4, 23
001ae0  9b427801  srli r5, r16, 23
001ae4  13010100  seteq r2, r2, zero
001ae8  93810100  seteq r3, r3, zero
001aec  1b02f20f  andi r4, r4, 255
001af0  9b82f20f  andi r5, r5, 255
001af4  1b72f20f  setlti r4, r4, 255
001af8  9bf2f20f  setlti r5, r5, 255
001afc  17112200  or r2, r4, r2
001b00  97913200  or r3, r5, r3
001b04  17812100  and r2, r3, r2
001b08  b7430108  beq r2, zero, 4336
001b0c  bb530808  bneq r16, zero, 4340
001b10  e3023ffe  loadli.w r5,  -232(r30)
001b14  37a00200  beq r5, zero, 8
001b18  9f020800  addli r5, r16, 0
001b1c  13611006  setle.f r2, zero, r1
001b20  93e10006  setle.f r3, r1, zero
001b24  17812100  and r2, r3, r2
001b28  3b200100  bneq r2, zero, 8
001b2c  9f820000  addli r5, r1, 0
001b30  13e15404  setlt.f r2, r9, r5
001b34  9f800200  addli r1, r5, 0
001b38  3b200100  bneq r2, zero, 8
001b3c  9f800400  addli r1, r9, 0
001b40  1bb19400  slli r2, r9, 9
001b44  9bb19200  slli r3, r5, 9
001b48  1bc27401  srli r4, r9, 23
001b4c  1f880200  addli r16, r5, 0
001b50  9bc27201  srli r5, r5, 23
001b54  13010100  seteq r2, r2, zero
001b58  93810100  seteq r3, r3, zero
001b5c  1b02f20f  andi r4, r4, 255
001b60  9b82f20f  andi r5, r5, 255
001b64  1b72f20f  setlti r4, r4, 255
001b68  9bf2f20f  setlti r5, r5, 255
001b6c  17112200  or r2, r4, r2
001b70  97913200  or r3, r5, r3
001b74  17812100  and r2, r3, r2
001b78  37620108  beq r2, zero, 4248
001b7c  63024ffe  loadli.w r4,  -224(r30)
001b80  3b720808  bneq r16, zero, 4252
001b84  37a00400  beq r9, zero, 8
001b88  9f040800  addli r9, r16, 0
001b8c  13611006  setle.f r2, zero, r1
001b90  93e10006  setle.f r3, r1, zero
001b94  17812100  and r2, r3, r2
001b98  3b200100  bneq r2, zero, 8
001b9c  9f840000  addli r9, r1, 0
001ba0  13619204  setlt.f r2, r4, r9
001ba4  9f800400  addli r1, r9, 0
001ba8  3b200100  bneq r2, zero, 8
001bac  9f000200  addli r1, r4, 0
001bb0  1b319200  slli r2, r4, 9
001bb4  9bb19400  slli r3, r9, 9
001bb8  1b427201  srli r4, r4, 23
001bbc  9bc27401  srli r5, r9, 23
001bc0  13010100  seteq r2, r2, zero
001bc4  93810100  seteq r3, r3, zero
001bc8  1b02f20f  andi r4, r4, 255
001bcc  9b82f20f  andi r5, r5, 255
001bd0  1b72f20f  setlti r4, r4, 255
001bd4  9bf2f20f  setlti r5, r5, 255
001bd8  17112200  or r2, r4, r2
001bdc  97913200  or r3, r5, r3
001be0  17812100  and r2, r3, r2
001be4  37110108  beq r2, zero, 4164
001be8  3ba10408  bneq r9, zero, 4168
001bec  e3024ffe  loadli.w r5,  -224(r30)
001bf0  37a00200  beq r5, zero, 8
001bf4  9f820400  addli r5, r9, 0
001bf8  13611006  setle.f r2, zero, r1
001bfc  93e10006  setle.f r3, r1, zero
001c00  17812100  and r2, r3, r2
001c04  3b200100  bneq r2, zero, 8
001c08  9f820000  addli r5, r1, 0
001c0c  13615404  setlt.f r2, r8, r5
001c10  9f800200  addli r1, r5, 0
001c14  3b200100  bneq r2, zero, 8
001c18  9f000400  addli r1, r8, 0
001c1c  1b319400  slli r2, r8, 9
001c20  9bb19200  slli r3, r5, 9
001c24  1b427401  srli r4, r8, 23
001c28  9f8a0200  addli r21, r5, 0
001c2c  9bc27201  srli r5, r5, 23
001c30  13010100  seteq r2, r2, zero
001c34  93810100  seteq r3, r3, zero
001c38  1b02f20f  andi r4, r4, 255
001c3c  9b82f20f  andi r5, r5, 255
001c40  1b72f20f  setlti r4, r4, 255
001c44  9bf2f20f  setlti r5, r5, 255
001c48  17112200  or r2, r4, r2
001c4c  97913200  or r3, r5, r3
001c50  17812100  and r2, r3, r2
001c54  b73f0106  beq r2, zero, 4076
001c58  bbcf0a06  bneq r21, zero, 4080
001c5c  37200400  beq r8, zero, 8
001c60  1f840a00  addli r8, r21, 0
001c64  13611006  setle.f r2, zero, r1
001c68  93e10006  setle.f r3, r1, zero
001c6c  17812100  and r2, r3, r2
001c70  3b200100  bneq r2, zero, 8
001c74  1f840000  addli r8, r1, 0
001c78  13618304  setlt.f r2, r6, r8
001c7c  9f000400  addli r1, r8, 0
001c80  3b200100  bneq r2, zero, 8
001c84  9f000300  addli r1, r6, 0
001c88  1b319300  slli r2, r6, 9
001c8c  9b319400  slli r3, r8, 9
001c90  1b427301  srli r4, r6, 23
001c94  9b427401  srli r5, r8, 23
001c98  13010100  seteq r2, r2, zero
001c9c  93810100  seteq r3, r3, zero
001ca0  1b02f20f  andi r4, r4, 255
001ca4  9b82f20f  andi r5, r5, 255
001ca8  1b72f20f  setlti r4, r4, 255
001cac  9bf2f20f  setlti r5, r5, 255
001cb0  17112200  or r2, r4, r2
001cb4  97913200  or r3, r5, r3
001cb8  17812100  and r2, r3, r2
001cbc  376e0106  beq r2, zero, 3992
001cc0  63424ffe  loadli.w r4,  -220(r30)
001cc4  3b7e0406  bneq r8, zero, 3996
001cc8  37200300  beq r6, zero, 8
001ccc  1f030400  addli r6, r8, 0
001cd0  13611006  setle.f r2, zero, r1
001cd4  93e10006  setle.f r3, r1, zero
001cd8  17812100  and r2, r3, r2
001cdc  3b200100  bneq r2, zero, 8
001ce0  1f830000  addli r6, r1, 0
001ce4  13616204  setlt.f r2, r4, r6
001ce8  9f000300  addli r1, r6, 0
001cec  3b200100  bneq r2, zero, 8
001cf0  9f000200  addli r1, r4, 0
001cf4  1b319200  slli r2, r4, 9
001cf8  9b319300  slli r3, r6, 9
001cfc  1b427201  srli r4, r4, 23
001d00  9b427301  srli r5, r6, 23
001d04  13010100  seteq r2, r2, zero
001d08  93810100  seteq r3, r3, zero
001d0c  1b02f20f  andi r4, r4, 255
001d10  9b82f20f  andi r5, r5, 255
001d14  1b72f20f  setlti r4, r4, 255
001d18  9bf2f20f  setlti r5, r5, 255
001d1c  17112200  or r2, r4, r2
001d20  97913200  or r3, r5, r3
001d24  17812100  and r2, r3, r2
001d28  3b200100  bneq r2, zero, 8
001d2c  ab00c07f  lui r1, 523264
001d30  63025ffe  loadli.w r4,  -216(r30)
001d34  37200300  beq r6, zero, 8
001d38  1f830000  addli r6, r1, 0
001d3c  e34b3ffe  loadli.w r23,  -228(r30)
001d40  e3424ffe  loadli.w r5,  -220(r30)
001d44  37a00200  beq r5, zero, 8
001d48  9f020300  addli r5, r6, 0
001d4c  13611006  setle.f r2, zero, r1
001d50  93e10006  setle.f r3, r1, zero
001d54  634ebffc  loadli.w r28,  -420(r30)
001d58  17812100  and r2, r3, r2
001d5c  3b200100  bneq r2, zero, 8
001d60  9f820000  addli r5, r1, 0
001d64  13615204  setlt.f r2, r4, r5
001d68  6305cffc  loadli.w r10,  -416(r30)
001d6c  9f800200  addli r1, r5, 0
001d70  3b200100  bneq r2, zero, 8
001d74  9f000200  addli r1, r4, 0
001d78  1b319200  slli r2, r4, 9
001d7c  9bb19200  slli r3, r5, 9
001d80  1b427201  srli r4, r4, 23
001d84  1f8a0200  addli r20, r5, 0
001d88  9bc27201  srli r5, r5, 23
001d8c  e344cffc  loadli.w r9,  -412(r30)
001d90  13010100  seteq r2, r2, zero
001d94  93810100  seteq r3, r3, zero
001d98  1b02f20f  andi r4, r4, 255
001d9c  9b82f20f  andi r5, r5, 255
001da0  1b72f20f  setlti r4, r4, 255
001da4  9bf2f20f  setlti r5, r5, 255
001da8  17112200  or r2, r4, r2
001dac  97913200  or r3, r5, r3
001db0  17812100  and r2, r3, r2
001db4  3b200100  bneq r2, zero, 8
001db8  ab00c07f  lui r1, 523264
001dbc  6304affc  loadli.w r8,  -432(r30)
001dc0  37200a00  beq r20, zero, 8
001dc4  1f8a0000  addli r20, r1, 0
001dc8  e30adffc  loadli.w r21,  -408(r30)
001dcc  e3025ffe  loadli.w r5,  -216(r30)
001dd0  37a00200  beq r5, zero, 8
001dd4  9f020a00  addli r5, r20, 0
001dd8  13611006  setle.f r2, zero, r1
001ddc  93e10006  setle.f r3, r1, zero
001de0  6303effc  loadli.w r6,  -400(r30)
001de4  17812100  and r2, r3, r2
001de8  3b200100  bneq r2, zero, 8
001dec  9f820000  addli r5, r1, 0
001df0  13e15d04  setlt.f r2, r27, r5
001df4  6348dffc  loadli.w r16,  -404(r30)
001df8  9f800200  addli r1, r5, 0
001dfc  3b200100  bneq r2, zero, 8
001e00  9f800d00  addli r1, r27, 0
001e04  1bb19d00  slli r2, r27, 9
001e08  9bb19200  slli r3, r5, 9
001e0c  1bc27d01  srli r4, r27, 23
001e10  1f8a0200  addli r20, r5, 0
001e14  9bc27201  srli r5, r5, 23
001e18  13010100  seteq r2, r2, zero
001e1c  93810100  seteq r3, r3, zero
001e20  1b02f20f  andi r4, r4, 255
001e24  9b82f20f  andi r5, r5, 255
001e28  1b72f20f  setlti r4, r4, 255
001e2c  9bf2f20f  setlti r5, r5, 255
001e30  17112200  or r2, r4, r2
001e34  97913200  or r3, r5, r3
001e38  17812100  and r2, r3, r2
001e3c  b7480106  beq r2, zero, 3632
001e40  63425ffe  loadli.w r4,  -212(r30)
001e44  bb580a06  bneq r20, zero, 3636
001e48  37a00d00  beq r27, zero, 8
001e4c  9f0d0a00  addli r27, r20, 0
001e50  13611006  setle.f r2, zero, r1
001e54  93e10006  setle.f r3, r1, zero
001e58  17812100  and r2, r3, r2
001e5c  3b200100  bneq r2, zero, 8
001e60  9f8d0000  addli r27, r1, 0
001e64  1361b205  setlt.f r2, r4, r27
001e68  9f800d00  addli r1, r27, 0
001e6c  1f0a0800  addli r20, r16, 0
001e70  3b200100  bneq r2, zero, 8
001e74  9f000200  addli r1, r4, 0
001e78  1b319200  slli r2, r4, 9
001e7c  9bb19d00  slli r3, r27, 9
001e80  1b427201  srli r4, r4, 23
001e84  9bc27d01  srli r5, r27, 23
001e88  1f080300  addli r16, r6, 0
001e8c  13010100  seteq r2, r2, zero
001e90  93810100  seteq r3, r3, zero
001e94  1b02f20f  andi r4, r4, 255
001e98  9b82f20f  andi r5, r5, 255
001e9c  1b72f20f  setlti r4, r4, 255
001ea0  9bf2f20f  setlti r5, r5, 255
001ea4  17112200  or r2, r4, r2
001ea8  97913200  or r3, r5, r3
001eac  17812100  and r2, r3, r2
001eb0  3b200100  bneq r2, zero, 8
001eb4  ab00c07f  lui r1, 523264
001eb8  1f830a00  addli r6, r21, 0
001ebc  37a00d00  beq r27, zero, 8
001ec0  9f8d0000  addli r27, r1, 0
001ec4  e3425ffe  loadli.w r5,  -212(r30)
001ec8  9f0a0400  addli r21, r8, 0
001ecc  37a00200  beq r5, zero, 8
001ed0  9f820d00  addli r5, r27, 0
001ed4  13611006  setle.f r2, zero, r1
001ed8  93e10006  setle.f r3, r1, zero
001edc  1f840400  addli r8, r9, 0
001ee0  17812100  and r2, r3, r2
001ee4  3b200100  bneq r2, zero, 8
001ee8  9f820000  addli r5, r1, 0
001eec  13615b04  setlt.f r2, r22, r5
001ef0  9f800200  addli r1, r5, 0
001ef4  9f040500  addli r9, r10, 0
001ef8  3b200100  bneq r2, zero, 8
001efc  9f000b00  addli r1, r22, 0
001f00  1b319b00  slli r2, r22, 9
001f04  9bb19200  slli r3, r5, 9
001f08  1b427b01  srli r4, r22, 23
001f0c  9f8d0200  addli r27, r5, 0
001f10  9bc27201  srli r5, r5, 23
001f14  1f050e00  addli r10, r28, 0
001f18  13010100  seteq r2, r2, zero
001f1c  93810100  seteq r3, r3, zero
001f20  1b02f20f  andi r4, r4, 255
001f24  9b82f20f  andi r5, r5, 255
001f28  1b72f20f  setlti r4, r4, 255
001f2c  9bf2f20f  setlti r5, r5, 255
001f30  17112200  or r2, r4, r2
001f34  97913200  or r3, r5, r3
001f38  17812100  and r2, r3, r2
001f3c  37250106  beq r2, zero, 3400
001f40  1f8e0b00  addli r28, r23, 0
001f44  3bb50d06  bneq r27, zero, 3404
001f48  37200b00  beq r22, zero, 8
001f4c  1f8b0d00  addli r22, r27, 0
001f50  13611006  setle.f r2, zero, r1
001f54  93e10006  setle.f r3, r1, zero
001f58  17812100  and r2, r3, r2
001f5c  3b200100  bneq r2, zero, 8
001f60  1f8b0000  addli r22, r1, 0
001f64  13e16a05  setlt.f r2, r21, r22
001f68  9f000b00  addli r1, r22, 0
001f6c  3b200100  bneq r2, zero, 8
001f70  9f800a00  addli r1, r21, 0
001f74  1bb19a00  slli r2, r21, 9
001f78  9b319b00  slli r3, r22, 9
001f7c  1bc27a01  srli r4, r21, 23
001f80  9b427b01  srli r5, r22, 23
001f84  13010100  seteq r2, r2, zero
001f88  93810100  seteq r3, r3, zero
001f8c  1b02f20f  andi r4, r4, 255
001f90  9b82f20f  andi r5, r5, 255
001f94  1b72f20f  setlti r4, r4, 255
001f98  9bf2f20f  setlti r5, r5, 255
001f9c  17112200  or r2, r4, r2
001fa0  97913200  or r3, r5, r3
001fa4  17812100  and r2, r3, r2
001fa8  b7530106  beq r2, zero, 3316
001fac  bb630b06  bneq r22, zero, 3320
001fb0  37a00a00  beq r21, zero, 8
001fb4  9f0a0b00  addli r21, r22, 0
001fb8  13611006  setle.f r2, zero, r1
001fbc  93e10006  setle.f r3, r1, zero
001fc0  17812100  and r2, r3, r2
001fc4  3b200100  bneq r2, zero, 8
001fc8  9f8a0000  addli r21, r1, 0
001fcc  13e15605  setlt.f r2, r13, r21
001fd0  9f800a00  addli r1, r21, 0
001fd4  3b200100  bneq r2, zero, 8
001fd8  9f800600  addli r1, r13, 0
001fdc  1bb19600  slli r2, r13, 9
001fe0  9bb19a00  slli r3, r21, 9
001fe4  1bc27601  srli r4, r13, 23
001fe8  9bc27a01  srli r5, r21, 23
001fec  13010100  seteq r2, r2, zero
001ff0  93810100  seteq r3, r3, zero
001ff4  1b02f20f  andi r4, r4, 255
001ff8  9b82f20f  andi r5, r5, 255
001ffc  1b72f20f  setlti r4, r4, 255
002000  9bf2f20f  setlti r5, r5, 255
002004  17112200  or r2, r4, r2
002008  97913200  or r3, r5, r3
00200c  17812100  and r2, r3, r2
002010  b7020106  beq r2, zero, 3232
002014  bb920a06  bneq r21, zero, 3236
002018  37a00600  beq r13, zero, 8
00201c  9f860a00  addli r13, r21, 0
002020  13611006  setle.f r2, zero, r1
002024  93e10006  setle.f r3, r1, zero
002028  17812100  and r2, r3, r2
00202c  3b200100  bneq r2, zero, 8
002030  9f860000  addli r13, r1, 0
002034  1361d604  setlt.f r2, r12, r13
002038  9f800600  addli r1, r13, 0
00203c  3b200100  bneq r2, zero, 8
002040  9f000600  addli r1, r12, 0
002044  1b319600  slli r2, r12, 9
002048  9bb19600  slli r3, r13, 9
00204c  1b427601  srli r4, r12, 23
002050  9bc27601  srli r5, r13, 23
002054  13010100  seteq r2, r2, zero
002058  93810100  seteq r3, r3, zero
00205c  1b02f20f  andi r4, r4, 255
002060  9b82f20f  andi r5, r5, 255
002064  1b72f20f  setlti r4, r4, 255
002068  9bf2f20f  setlti r5, r5, 255
00206c  17112200  or r2, r4, r2
002070  97913200  or r3, r5, r3
002074  17812100  and r2, r3, r2
002078  37310106  beq r2, zero, 3148
00207c  3bc10606  bneq r13, zero, 3152
002080  37200600  beq r12, zero, 8
002084  1f860600  addli r12, r13, 0
002088  13611006  setle.f r2, zero, r1
00208c  93e10006  setle.f r3, r1, zero
002090  17812100  and r2, r3, r2
002094  3b200100  bneq r2, zero, 8
002098  1f860000  addli r12, r1, 0
00209c  1361c504  setlt.f r2, r10, r12
0020a0  9f000600  addli r1, r12, 0
0020a4  3b200100  bneq r2, zero, 8
0020a8  9f000500  addli r1, r10, 0
0020ac  1b319500  slli r2, r10, 9
0020b0  9b319600  slli r3, r12, 9
0020b4  1b427501  srli r4, r10, 23
0020b8  9b427601  srli r5, r12, 23
0020bc  13010100  seteq r2, r2, zero
0020c0  93810100  seteq r3, r3, zero
0020c4  1b02f20f  andi r4, r4, 255
0020c8  9b82f20f  andi r5, r5, 255
0020cc  1b72f20f  setlti r4, r4, 255
0020d0  9bf2f20f  setlti r5, r5, 255
0020d4  17112200  or r2, r4, r2
0020d8  97913200  or r3, r5, r3
0020dc  17812100  and r2, r3, r2
0020e0  b76f0104  beq r2, zero, 3064
0020e4  bb7f0604  bneq r12, zero, 3068
0020e8  37200500  beq r10, zero, 8
0020ec  1f050600  addli r10, r12, 0
0020f0  13611006  setle.f r2, zero, r1
0020f4  93e10006  setle.f r3, r1, zero
0020f8  17812100  and r2, r3, r2
0020fc  3b200100  bneq r2, zero, 8
002100  1f850000  addli r10, r1, 0
002104  13e1a404  setlt.f r2, r9, r10
002108  9f000500  addli r1, r10, 0
00210c  3b200100  bneq r2, zero, 8
002110  9f800400  addli r1, r9, 0
002114  1bb19400  slli r2, r9, 9
002118  9b319500  slli r3, r10, 9
00211c  1bc27401  srli r4, r9, 23
002120  9b427501  srli r5, r10, 23
002124  13010100  seteq r2, r2, zero
002128  93810100  seteq r3, r3, zero
00212c  1b02f20f  andi r4, r4, 255
002130  9b82f20f  andi r5, r5, 255
002134  1b72f20f  setlti r4, r4, 255
002138  9bf2f20f  setlti r5, r5, 255
00213c  17112200  or r2, r4, r2
002140  97913200  or r3, r5, r3
002144  17812100  and r2, r3, r2
002148  b71e0104  beq r2, zero, 2980
00214c  bb2e0504  bneq r10, zero, 2984
002150  37a00400  beq r9, zero, 8
002154  9f040500  addli r9, r10, 0
002158  13611006  setle.f r2, zero, r1
00215c  93e10006  setle.f r3, r1, zero
002160  17812100  and r2, r3, r2
002164  3b200100  bneq r2, zero, 8
002168  9f840000  addli r9, r1, 0
00216c  13619404  setlt.f r2, r8, r9
002170  9f800400  addli r1, r9, 0
002174  3b200100  bneq r2, zero, 8
002178  9f000400  addli r1, r8, 0
00217c  1b319400  slli r2, r8, 9
002180  9bb19400  slli r3, r9, 9
002184  1b427401  srli r4, r8, 23
002188  9bc27401  srli r5, r9, 23
00218c  13010100  seteq r2, r2, zero
002190  93810100  seteq r3, r3, zero
002194  1b02f20f  andi r4, r4, 255
002198  9b82f20f  andi r5, r5, 255
00219c  1b72f20f  setlti r4, r4, 255
0021a0  9bf2f20f  setlti r5, r5, 255
0021a4  17112200  or r2, r4, r2
0021a8  97913200  or r3, r5, r3
0021ac  17812100  and r2, r3, r2
0021b0  374d0104  beq r2, zero, 2896
0021b4  3bdd0404  bneq r9, zero, 2900
0021b8  37200400  beq r8, zero, 8
0021bc  1f840400  addli r8, r9, 0
0021c0  13611006  setle.f r2, zero, r1
0021c4  93e10006  setle.f r3, r1, zero
0021c8  17812100  and r2, r3, r2
0021cc  3b200100  bneq r2, zero, 8
0021d0  1f840000  addli r8, r1, 0
0021d4  13618304  setlt.f r2, r6, r8
0021d8  9f000400  addli r1, r8, 0
0021dc  3b200100  bneq r2, zero, 8
0021e0  9f000300  addli r1, r6, 0
0021e4  1b319300  slli r2, r6, 9
0021e8  9b319400  slli r3, r8, 9
0021ec  1b427301  srli r4, r6, 23
0021f0  9b427401  srli r5, r8, 23
0021f4  13010100  seteq r2, r2, zero
0021f8  93810100  seteq r3, r3, zero
0021fc  1b02f20f  andi r4, r4, 255
002200  9b82f20f  andi r5, r5, 255
002204  1b72f20f  setlti r4, r4, 255
002208  9bf2f20f  setlti r5, r5, 255
00220c  17112200  or r2, r4, r2
002210  97913200  or r3, r5, r3
002214  17812100  and r2, r3, r2
002218  b77b0104  beq r2, zero, 2812
00221c  3b0c0404  bneq r8, zero, 2816
002220  37200300  beq r6, zero, 8
002224  1f030400  addli r6, r8, 0
002228  13611006  setle.f r2, zero, r1
00222c  93e10006  setle.f r3, r1, zero
002230  17812100  and r2, r3, r2
002234  3b200100  bneq r2, zero, 8
002238  1f830000  addli r6, r1, 0
00223c  73e06500  stores.w r6, 0(r11)
002240  00a00300  mfence { lm, sm, gm }
002244  80210e04  csr_set csr3, r28
002248  00d00100  sync_group
00224c  6fcb0500  loads.w r22, 0(r11)
002250  bf907c00  blt.s r25, r7, 36
002254  1f080000  addli r16, zero, 0
002258  1f0e0000  addli r28, zero, 0
00225c  5b050000  j 40
002260  2b01c07f  lui r2, 523264
002264  37a900f0  beq r1, zero, -7608
002268  9f000100  addli r1, r2, 0
00226c  3b1902f0  bneq r4, zero, -7612
002270  db48fcff  j -7612
002274  8b606819  sub.f.rn r1, r16, r22
002278  0b616a19  sub.f.rn r2, r20, r22
00227c  0f880000  exp.f.rn r16, r1
002280  0f0e0100  exp.f.rn r28, r2
002284  e3407ffd  loadli.w r1,  -324(r30)
002288  8b9da011  add.s r27, r1, r26
00228c  e3007ffd  loadli.w r1,  -328(r30)
002290  8b9ba011  add.s r23, r1, r26
002294  e3406ffd  loadli.w r1,  -332(r30)
002298  8b9aa011  add.s r21, r1, r26
00229c  e3006ffd  loadli.w r1,  -336(r30)
0022a0  0b9aa011  add.s r20, r1, r26
0022a4  e3405ffd  loadli.w r1,  -340(r30)
0022a8  8b96a011  add.s r13, r1, r26
0022ac  e3005ffd  loadli.w r1,  -344(r30)
0022b0  0b96a011  add.s r12, r1, r26
0022b4  e3404ffd  loadli.w r1,  -348(r30)
0022b8  0b95a011  add.s r10, r1, r26
0022bc  e3004ffd  loadli.w r1,  -352(r30)
0022c0  8b94a011  add.s r9, r1, r26
0022c4  e3403ffd  loadli.w r1,  -356(r30)
0022c8  0b94a011  add.s r8, r1, r26
0022cc  e3003ffd  loadli.w r1,  -360(r30)
0022d0  0b93a011  add.s r6, r1, r26
0022d4  e3402ffd  loadli.w r1,  -364(r30)
0022d8  8b92a011  add.s r5, r1, r26
0022dc  e3002ffd  loadli.w r1,  -368(r30)
0022e0  8b90a011  add.s r1, r1, r26
0022e4  67021ffe  storeli.w r1, -224(r30)
0022e8  e3401ffd  loadli.w r1,  -372(r30)
0022ec  8b90a011  add.s r1, r1, r26
0022f0  67421ffe  storeli.w r1, -220(r30)
0022f4  e3001ffd  loadli.w r1,  -376(r30)
0022f8  8b90a011  add.s r1, r1, r26
0022fc  e7021ffe  storeli.w r1, -216(r30)
002300  e3400ffd  loadli.w r1,  -380(r30)
002304  8b90a011  add.s r1, r1, r26
002308  1f0d0000  addli r26, zero, 0
00230c  e7421ffe  storeli.w r1, -212(r30)
002310  db030000  j 28
002314  9f000000  addli r1, zero, 0
002318  1f010000  addli r2, zero, 0
00231c  0b681810  add.f.rn r16, r16, r1
002320  0b6e2e10  add.f.rn r28, r28, r2
002324  1f4d0d00  addli r26, r26, 4
002328  37412d01  beq r26, r18, 80
00232c  3fa07c00  blt.s r25, r7, 8
002330  dbfcffff  j -28
002334  8b90a711  add.s r1, r15, r26
002338  0b91a811  add.s r2, r17, r26
00233c  ebb14000  load.hu r3, 4(r1)
002340  6b324100  load.hu r4, 4(r2)
002344  ebb06000  load.hu r1, 6(r1)
002348  6b316100  load.hu r2, 6(r2)
00234c  b3910120  hfloat2float.rn r3, r3
002350  33120220  hfloat2float.rn r4, r4
002354  b3900020  hfloat2float.rn r1, r1
002358  33110120  hfloat2float.rn r2, r2
00235c  8be14110  add.f.rn r3, r3, r4
002360  8be02010  add.f.rn r1, r1, r2
002364  0be16119  sub.f.rn r2, r3, r22
002368  8be16019  sub.f.rn r3, r1, r22
00236c  8f000100  exp.f.rn r1, r2
002370  0f810100  exp.f.rn r2, r3
002374  5bf5ffff  j -88
002378  8b60c811  add.f.rn r1, r16, r28
00237c  63019ffd  loadli.w r2,  -312(r30)
002380  73601100  stores.w r1, 0(r2)
002384  00a00300  mfence { lm, sm, gm }
002388  634e3ffe  loadli.w r28,  -228(r30)
00238c  80210e04  csr_set csr3, r28
002390  00d00100  sync_group
002394  e3407ffe  loadli.w r1,  -196(r30)
002398  3b980000  bneq r1, zero, 516
00239c  6f480700  loads.w r16, 0(r14)
0023a0  6f4d4700  loads.w r26, 4(r14)
0023a4  ef4c8700  loads.w r25, 8(r14)
0023a8  6f41c700  loads.w r2, 12(r14)
0023ac  ef410701  loads.w r3, 16(r14)
0023b0  8b60a811  add.f.rn r1, r16, r26
0023b4  8be09011  add.f.rn r1, r1, r25
0023b8  8be02010  add.f.rn r1, r1, r2
0023bc  6f414701  loads.w r2, 20(r14)
0023c0  8be03010  add.f.rn r1, r1, r3
0023c4  ef418701  loads.w r3, 24(r14)
0023c8  8be02010  add.f.rn r1, r1, r2
0023cc  6f41c701  loads.w r2, 28(r14)
0023d0  8be03010  add.f.rn r1, r1, r3
0023d4  ef410702  loads.w r3, 32(r14)
0023d8  8be02010  add.f.rn r1, r1, r2
0023dc  6f414702  loads.w r2, 36(r14)
0023e0  8be03010  add.f.rn r1, r1, r3
0023e4  ef418702  loads.w r3, 40(r14)
0023e8  8be02010  add.f.rn r1, r1, r2
0023ec  6f41c702  loads.w r2, 44(r14)
0023f0  8be03010  add.f.rn r1, r1, r3
0023f4  ef410703  loads.w r3, 48(r14)
0023f8  8be02010  add.f.rn r1, r1, r2
0023fc  6f414703  loads.w r2, 52(r14)
002400  8be03010  add.f.rn r1, r1, r3
002404  ef418703  loads.w r3, 56(r14)
002408  8be02010  add.f.rn r1, r1, r2
00240c  6f41c703  loads.w r2, 60(r14)
002410  8be03010  add.f.rn r1, r1, r3
002414  ef410704  loads.w r3, 64(r14)
002418  8be02010  add.f.rn r1, r1, r2
00241c  6f414704  loads.w r2, 68(r14)
002420  8be03010  add.f.rn r1, r1, r3
002424  ef418704  loads.w r3, 72(r14)
002428  8be02010  add.f.rn r1, r1, r2
00242c  6f41c704  loads.w r2, 76(r14)
002430  8be03010  add.f.rn r1, r1, r3
002434  ef410705  loads.w r3, 80(r14)
002438  8be02010  add.f.rn r1, r1, r2
00243c  6f414705  loads.w r2, 84(r14)
002440  8be03010  add.f.rn r1, r1, r3
002444  ef418705  loads.w r3, 88(r14)
002448  8be02010  add.f.rn r1, r1, r2
00244c  6f41c705  loads.w r2, 92(r14)
002450  8be03010  add.f.rn r1, r1, r3
002454  ef410706  loads.w r3, 96(r14)
002458  8be02010  add.f.rn r1, r1, r2
00245c  6f414706  loads.w r2, 100(r14)
002460  8be03010  add.f.rn r1, r1, r3
002464  ef418706  loads.w r3, 104(r14)
002468  8be02010  add.f.rn r1, r1, r2
00246c  6f41c706  loads.w r2, 108(r14)
002470  8be03010  add.f.rn r1, r1, r3
002474  ef410707  loads.w r3, 112(r14)
002478  8be02010  add.f.rn r1, r1, r2
00247c  6f414707  loads.w r2, 116(r14)
002480  8be03010  add.f.rn r1, r1, r3
002484  ef418707  loads.w r3, 120(r14)
002488  8be02010  add.f.rn r1, r1, r2
00248c  6f41c707  loads.w r2, 124(r14)
002490  8be03010  add.f.rn r1, r1, r3
002494  ef410708  loads.w r3, 128(r14)
002498  8be02010  add.f.rn r1, r1, r2
00249c  6f414708  loads.w r2, 132(r14)
0024a0  8be03010  add.f.rn r1, r1, r3
0024a4  ef418708  loads.w r3, 136(r14)
0024a8  8be02010  add.f.rn r1, r1, r2
0024ac  6f41c708  loads.w r2, 140(r14)
0024b0  8be03010  add.f.rn r1, r1, r3
0024b4  ef410709  loads.w r3, 144(r14)
0024b8  8be02010  add.f.rn r1, r1, r2
0024bc  6f414709  loads.w r2, 148(r14)
0024c0  8be03010  add.f.rn r1, r1, r3
0024c4  ef418709  loads.w r3, 152(r14)
0024c8  8be02010  add.f.rn r1, r1, r2
0024cc  6f41c709  loads.w r2, 156(r14)
0024d0  8be03010  add.f.rn r1, r1, r3
0024d4  ef41070a  loads.w r3, 160(r14)
0024d8  8be02010  add.f.rn r1, r1, r2
0024dc  6f41470a  loads.w r2, 164(r14)
0024e0  8be03010  add.f.rn r1, r1, r3
0024e4  ef41870a  loads.w r3, 168(r14)
0024e8  8be02010  add.f.rn r1, r1, r2
0024ec  6f41c70a  loads.w r2, 172(r14)
0024f0  8be03010  add.f.rn r1, r1, r3
0024f4  ef41070b  loads.w r3, 176(r14)
0024f8  8be02010  add.f.rn r1, r1, r2
0024fc  6f41470b  loads.w r2, 180(r14)
002500  8be03010  add.f.rn r1, r1, r3
002504  ef41870b  loads.w r3, 184(r14)
002508  8be02010  add.f.rn r1, r1, r2
00250c  6f41c70b  loads.w r2, 188(r14)
002510  8be03010  add.f.rn r1, r1, r3
002514  ef41070c  loads.w r3, 192(r14)
002518  8be02010  add.f.rn r1, r1, r2
00251c  6f41470c  loads.w r2, 196(r14)
002520  8be03010  add.f.rn r1, r1, r3
002524  ef41870c  loads.w r3, 200(r14)
002528  8be02010  add.f.rn r1, r1, r2
00252c  6f41c70c  loads.w r2, 204(r14)
002530  8be03010  add.f.rn r1, r1, r3
002534  ef41070d  loads.w r3, 208(r14)
002538  8be02010  add.f.rn r1, r1, r2
00253c  6f41470d  loads.w r2, 212(r14)
002540  8be03010  add.f.rn r1, r1, r3
002544  ef41870d  loads.w r3, 216(r14)
002548  8be02010  add.f.rn r1, r1, r2
00254c  6f41c70d  loads.w r2, 220(r14)
002550  8be03010  add.f.rn r1, r1, r3
002554  ef41070e  loads.w r3, 224(r14)
002558  8be02010  add.f.rn r1, r1, r2
00255c  6f41470e  loads.w r2, 228(r14)
002560  8be03010  add.f.rn r1, r1, r3
002564  ef41870e  loads.w r3, 232(r14)
002568  8be02010  add.f.rn r1, r1, r2
00256c  6f41c70e  loads.w r2, 236(r14)
002570  8be03010  add.f.rn r1, r1, r3
002574  ef41070f  loads.w r3, 240(r14)
002578  8be02010  add.f.rn r1, r1, r2
00257c  6f41470f  loads.w r2, 244(r14)
002580  8be03010  add.f.rn r1, r1, r3
002584  ef41870f  loads.w r3, 248(r14)
002588  8be02010  add.f.rn r1, r1, r2
00258c  6f41c70f  loads.w r2, 252(r14)
002590  8be03010  add.f.rn r1, r1, r3
002594  8be02010  add.f.rn r1, r1, r2
002598  73601700  stores.w r1, 0(r14)
00259c  00a00300  mfence { lm, sm, gm }
0025a0  80210e04  csr_set csr3, r28
0025a4  00d00100  sync_group
0025a8  ef400700  loads.w r1, 0(r14)
0025ac  2b01803f  lui r2, 260096
0025b0  9fac0800  addli r25, r17, 2
0025b4  1f0d0000  addli r26, zero, 0
0025b8  0f081118  div.f.rn r16, r2, r1
0025bc  eb30ecff  load.hu r1, -2(r24)
0025c0  6b310c00  load.hu r2, 0(r24)
0025c4  ebb1ecff  load.hu r3, -2(r25)
0025c8  6bb20c00  load.hu r4, 0(r25)
0025cc  1f4c0c00  addli r24, r24, 4
0025d0  9fcc0c00  addli r25, r25, 4
0025d4  b3900020  hfloat2float.rn r1, r1
0025d8  b3910120  hfloat2float.rn r3, r3
0025dc  33110120  hfloat2float.rn r2, r2
0025e0  33120220  hfloat2float.rn r4, r4
0025e4  8be03010  add.f.rn r1, r1, r3
0025e8  0b614110  add.f.rn r2, r2, r4
0025ec  8b91a911  add.s r3, r19, r26
0025f0  1f0d1d00  addli r26, r26, 8
0025f4  8be06019  sub.f.rn r1, r1, r22
0025f8  0b616119  sub.f.rn r2, r2, r22
0025fc  8f800000  exp.f.rn r1, r1
002600  0f010100  exp.f.rn r2, r2
002604  8b601820  mul.f.rn r1, r16, r1
002608  0b612820  mul.f.rn r2, r16, r2
00260c  67801100  storeli.w r1, 0(r3)
002610  67c02100  storeli.w r2, 4(r3)
002614  00a00000  mfence { lm }
002618  bb1e7dfe  bneq r26, r7, -92
00261c  b3900d28  sext_int2long r[2:3], r27
002620  9f2c0000  addli r25, zero, 2
002624  b3910b28  sext_int2long r[4:5], r23
002628  eb5b0f01  load.d r[24:25], 16(r30)
00262c  2b0800f0  lui r16, 983040
002630  1f4d0000  addli r26, zero, 4
002634  1fcb0900  addli r22, r19, 4
002638  97b09003  sll.d r[2:3], r[2:3], r25
00263c  17180d01  or r16, r26, r16
002640  97b19103  sll.d r[4:5], r[4:5], r25
002644  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002648  7fb86001  s_lm2gm r16, r22, 0(r[2:3])
00264c  2b0800f0  lui r16, 983040
002650  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002654  b3910a28  sext_int2long r[4:5], r21
002658  9f8a1900  addli r21, r19, 8
00265c  17180d01  or r16, r26, r16
002660  97b19103  sll.d r[4:5], r[4:5], r25
002664  7fb85001  s_lm2gm r16, r21, 0(r[2:3])
002668  2b0800f0  lui r16, 983040
00266c  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002670  b3110a28  sext_int2long r[4:5], r20
002674  1fca1900  addli r20, r19, 12
002678  17180d01  or r16, r26, r16
00267c  97b19103  sll.d r[4:5], r[4:5], r25
002680  7fb84001  s_lm2gm r16, r20, 0(r[2:3])
002684  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002688  b3910628  sext_int2long r[4:5], r13
00268c  ab0600f0  lui r13, 983040
002690  1f882900  addli r16, r19, 16
002694  9716dd00  or r13, r26, r13
002698  97b19103  sll.d r[4:5], r[4:5], r25
00269c  ffb60001  s_lm2gm r13, r16, 0(r[2:3])
0026a0  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026a4  b3110628  sext_int2long r[4:5], r12
0026a8  2b0600f0  lui r12, 983040
0026ac  9fc62900  addli r13, r19, 20
0026b0  1716cd00  or r12, r26, r12
0026b4  97b19103  sll.d r[4:5], r[4:5], r25
0026b8  7fb6d000  s_lm2gm r12, r13, 0(r[2:3])
0026bc  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026c0  b3110528  sext_int2long r[4:5], r10
0026c4  2b0500f0  lui r10, 983040
0026c8  1f863900  addli r12, r19, 24
0026cc  1715ad00  or r10, r26, r10
0026d0  97b19103  sll.d r[4:5], r[4:5], r25
0026d4  7fb5c000  s_lm2gm r10, r12, 0(r[2:3])
0026d8  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026dc  b3910428  sext_int2long r[4:5], r9
0026e0  ab0400f0  lui r9, 983040
0026e4  1fc53900  addli r10, r19, 28
0026e8  97149d00  or r9, r26, r9
0026ec  97b19103  sll.d r[4:5], r[4:5], r25
0026f0  ffb4a000  s_lm2gm r9, r10, 0(r[2:3])
0026f4  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026f8  b3110428  sext_int2long r[4:5], r8
0026fc  2b0400f0  lui r8, 983040
002700  9f844900  addli r9, r19, 32
002704  63057ffe  loadli.w r10,  -200(r30)
002708  17148d00  or r8, r26, r8
00270c  97b19103  sll.d r[4:5], r[4:5], r25
002710  7fb49000  s_lm2gm r8, r9, 0(r[2:3])
002714  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002718  b3110328  sext_int2long r[4:5], r6
00271c  2b0300f0  lui r6, 983040
002720  1fc44900  addli r8, r19, 36
002724  9fc47900  addli r9, r19, 60
002728  17136d00  or r6, r26, r6
00272c  97b19103  sll.d r[4:5], r[4:5], r25
002730  7fb38000  s_lm2gm r6, r8, 0(r[2:3])
002734  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002738  b3910228  sext_int2long r[4:5], r5
00273c  ab0200f0  lui r5, 983040
002740  1f835900  addli r6, r19, 40
002744  2b0400f0  lui r8, 983040
002748  97125d00  or r5, r26, r5
00274c  97b19103  sll.d r[4:5], r[4:5], r25
002750  17148d00  or r8, r26, r8
002754  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
002758  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
00275c  ab0100f0  lui r3, 983040
002760  eb520ff3  load.d r[6:7], -208(r30)
002764  1fc25900  addli r4, r19, 44
002768  97113d00  or r3, r26, r3
00276c  97b29203  sll.d r[6:7], r[6:7], r25
002770  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
002774  63024ffe  loadli.w r4,  -224(r30)
002778  ab0100f0  lui r3, 983040
00277c  8ba05b10  add.ul r[2:3], r[24:25], r[6:7]
002780  1f836900  addli r6, r19, 48
002784  97113d00  or r3, r26, r3
002788  33120228  sext_int2long r[5:6], r4
00278c  ffb13001  s_lm2gm r3, r19, 0(r[2:3])
002790  e3404ffe  loadli.w r1,  -220(r30)
002794  17329203  sll.d r[5:6], r[5:6], r25
002798  8ba14b10  add.ul r[4:5], r[24:25], r[5:6]
00279c  ab0200f0  lui r5, 983040
0027a0  b3900028  sext_int2long r[2:3], r1
0027a4  97125d00  or r5, r26, r5
0027a8  97b09003  sll.d r[2:3], r[2:3], r25
0027ac  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0027b0  ab0100f0  lui r3, 983040
0027b4  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0027b8  1fc26900  addli r4, r19, 52
0027bc  e3025ffe  loadli.w r5,  -216(r30)
0027c0  97113d00  or r3, r26, r3
0027c4  b3920228  sext_int2long r[6:7], r5
0027c8  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0027cc  e3405ffe  loadli.w r1,  -212(r30)
0027d0  97b19203  sll.d r[4:5], r[6:7], r25
0027d4  ab0200f0  lui r5, 983040
0027d8  1f837900  addli r6, r19, 56
0027dc  b3900028  sext_int2long r[2:3], r1
0027e0  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
0027e4  97125d00  or r5, r26, r5
0027e8  97b09003  sll.d r[2:3], r[2:3], r25
0027ec  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0027f0  9f024000  addli r5, zero, 32
0027f4  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0027f8  7fb49000  s_lm2gm r8, r9, 0(r[2:3])
0027fc  e3008ffd  loadli.w r1,  -320(r30)
002800  00a00000  mfence { lm }
002804  0b151510  add.s r10, r10, r1
002808  e300affd  loadli.w r1,  -304(r30)
00280c  bf5815ec  blt.s r10, r1, -9676
002810  5ba30000  j 1304
002814  2b01c07f  lui r2, 523264
002818  b78401ee  beq r3, zero, -8928
00281c  9f010100  addli r3, r2, 0
002820  3bf400ee  bneq r1, zero, -8932
002824  dba3fbff  j -8932
002828  2b01c07f  lui r2, 523264
00282c  b7e500ee  beq r1, zero, -8840
002830  9f000100  addli r1, r2, 0
002834  bbd50aee  bneq r21, zero, -8844
002838  dbaefbff  j -8844
00283c  2b0dc07f  lui r26, 523264
002840  37be0aee  beq r21, zero, -8308
002844  9f0a0d00  addli r21, r26, 0
002848  3b2e08ee  bneq r16, zero, -8312
00284c  5bf1fbff  j -8312
002850  ab0ac07f  lui r21, 523264
002854  b71f08ee  beq r16, zero, -8220
002858  1f880a00  addli r16, r21, 0
00285c  bb0f05ee  bneq r10, zero, -8224
002860  5bfcfbff  j -8224
002864  2b08c07f  lui r16, 523264
002868  630a1ffc  loadli.w r20,  -504(r30)
00286c  b77005f0  beq r10, zero, -8132
002870  1f050800  addli r10, r16, 0
002874  bbe00bf0  bneq r23, zero, -8136
002878  5b07fcff  j -8136
00287c  2b05c07f  lui r10, 523264
002880  37c20bf0  beq r23, zero, -8048
002884  9f0b0500  addli r23, r10, 0
002888  3b3201f0  bneq r2, zero, -8052
00288c  db11fcff  j -8052
002890  2b05c07f  lui r10, 523264
002894  63481ffc  loadli.w r16,  -500(r30)
002898  b72301f0  beq r2, zero, -7960
00289c  1f010500  addli r2, r10, 0
0028a0  bb9300f0  bneq r1, zero, -7964
0028a4  db1cfcff  j -7964
0028a8  2b01c07f  lui r2, 523264
0028ac  63450ffc  loadli.w r10,  -508(r30)
0028b0  b7f400f0  beq r1, zero, -7876
0028b4  9f000100  addli r1, r2, 0
0028b8  bb6404f0  bneq r8, zero, -7880
0028bc  5b27fcff  j -7880
0028c0  ab00c07f  lui r1, 523264
0028c4  e3040ffc  loadli.w r9,  -512(r30)
0028c8  374604f0  beq r8, zero, -7792
0028cc  1f840000  addli r8, r1, 0
0028d0  3b3603f0  bneq r6, zero, -7796
0028d4  db31fcff  j -7796
0028d8  ab00c07f  lui r1, 523264
0028dc  b71703f0  beq r6, zero, -7708
0028e0  1f830000  addli r6, r1, 0
0028e4  bb8701f0  bneq r3, zero, -7712
0028e8  5b3cfcff  j -7712
0028ec  ab00c07f  lui r1, 523264
0028f0  b7e801f0  beq r3, zero, -7624
0028f4  9f810000  addli r3, r1, 0
0028f8  bb5806f0  bneq r12, zero, -7628
0028fc  db46fcff  j -7628
002900  ab00c07f  lui r1, 523264
002904  373a06f0  beq r12, zero, -7540
002908  1f860000  addli r12, r1, 0
00290c  3baa06f0  bneq r13, zero, -7544
002910  5b51fcff  j -7544
002914  ab00c07f  lui r1, 523264
002918  b79b06f0  beq r13, zero, -7452
00291c  9f860000  addli r13, r1, 0
002920  bb8b0df0  bneq r27, zero, -7456
002924  5b5cfcff  j -7456
002928  ab00c07f  lui r1, 523264
00292c  b7fc0df0  beq r27, zero, -7364
002930  9f8d0000  addli r27, r1, 0
002934  bb6c0ef0  bneq r28, zero, -7368
002938  5b67fcff  j -7368
00293c  ab00c07f  lui r1, 523264
002940  6302bffd  loadli.w r4,  -296(r30)
002944  375e0ef0  beq r28, zero, -7276
002948  1f8e0000  addli r28, r1, 0
00294c  3b4e0bf0  bneq r22, zero, -7280
002950  5b72fcff  j -7280
002954  ab00c07f  lui r1, 523264
002958  b73f0bf0  beq r22, zero, -7188
00295c  1f8b0000  addli r22, r1, 0
002960  e302bffd  loadli.w r5,  -296(r30)
002964  bbaf02f0  bneq r5, zero, -7192
002968  5b7dfcff  j -7192
00296c  ab00c07f  lui r1, 523264
002970  6342bffd  loadli.w r4,  -292(r30)
002974  372104f2  beq r8, zero, -7096
002978  1f840000  addli r8, r1, 0
00297c  3b9104f2  bneq r9, zero, -7100
002980  db88fcff  j -7100
002984  ab00c07f  lui r1, 523264
002988  37f204f2  beq r9, zero, -7012
00298c  9f840000  addli r9, r1, 0
002990  e342bffd  loadli.w r5,  -292(r30)
002994  3be202f2  bneq r5, zero, -7016
002998  5b93fcff  j -7016
00299c  ab00c07f  lui r1, 523264
0029a0  6302cffd  loadli.w r4,  -288(r30)
0029a4  b7d304f2  beq r9, zero, -6924
0029a8  9f840000  addli r9, r1, 0
0029ac  bb4305f2  bneq r10, zero, -6928
0029b0  5b9efcff  j -6928
0029b4  ab00c07f  lui r1, 523264
0029b8  372505f2  beq r10, zero, -6840
0029bc  1f850000  addli r10, r1, 0
0029c0  e302cffd  loadli.w r5,  -288(r30)
0029c4  3b9502f2  bneq r5, zero, -6844
0029c8  dba8fcff  j -6844
0029cc  ab00c07f  lui r1, 523264
0029d0  6342cffd  loadli.w r4,  -284(r30)
0029d4  b70605f2  beq r10, zero, -6752
0029d8  1f850000  addli r10, r1, 0
0029dc  3b760af2  bneq r20, zero, -6756
0029e0  dbb3fcff  j -6756
0029e4  ab00c07f  lui r1, 523264
0029e8  b7570af2  beq r20, zero, -6668
0029ec  1f8a0000  addli r20, r1, 0
0029f0  e342cffd  loadli.w r5,  -284(r30)
0029f4  bbc702f2  bneq r5, zero, -6672
0029f8  5bbefcff  j -6672
0029fc  ab00c07f  lui r1, 523264
002a00  6302dffd  loadli.w r4,  -280(r30)
002a04  37390af2  beq r20, zero, -6580
002a08  1f8a0000  addli r20, r1, 0
002a0c  3b2908f2  bneq r16, zero, -6584
002a10  5bc9fcff  j -6584
002a14  ab00c07f  lui r1, 523264
002a18  6342dffd  loadli.w r4,  -276(r30)
002a1c  b70a08f2  beq r16, zero, -6496
002a20  1f880000  addli r16, r1, 0
002a24  e302dffd  loadli.w r5,  -280(r30)
002a28  3bfa02f2  bneq r5, zero, -6500
002a2c  dbd3fcff  j -6500
002a30  ab00c07f  lui r1, 523264
002a34  6302effd  loadli.w r4,  -272(r30)
002a38  373e0bf2  beq r22, zero, -6260
002a3c  1f8b0000  addli r22, r1, 0
002a40  3bae0af2  bneq r21, zero, -6264
002a44  5bf1fcff  j -6264
002a48  ab00c07f  lui r1, 523264
002a4c  b7b306f4  beq r13, zero, -5908
002a50  9f860000  addli r13, r1, 0
002a54  e342effd  loadli.w r5,  -268(r30)
002a58  bba302f4  bneq r5, zero, -5912
002a5c  5b1dfdff  j -5912
002a60  ab00c07f  lui r1, 523264
002a64  6302fffd  loadli.w r4,  -264(r30)
002a68  379506f4  beq r13, zero, -5820
002a6c  9f860000  addli r13, r1, 0
002a70  3b850bf4  bneq r23, zero, -5824
002a74  5b28fdff  j -5824
002a78  ab00c07f  lui r1, 523264
002a7c  37e60bf4  beq r23, zero, -5736
002a80  9f8b0000  addli r23, r1, 0
002a84  e302fffd  loadli.w r5,  -264(r30)
002a88  3bd602f4  bneq r5, zero, -5740
002a8c  db32fdff  j -5740
002a90  ab00c07f  lui r1, 523264
002a94  6342fffd  loadli.w r4,  -260(r30)
002a98  b7d706f4  beq r13, zero, -5644
002a9c  9f860000  addli r13, r1, 0
002aa0  bb4706f4  bneq r12, zero, -5648
002aa4  5b3efdff  j -5648
002aa8  ab00c07f  lui r1, 523264
002aac  373906f4  beq r12, zero, -5556
002ab0  1f860000  addli r12, r1, 0
002ab4  e342fffd  loadli.w r5,  -260(r30)
002ab8  3ba902f4  bneq r5, zero, -5560
002abc  5b49fdff  j -5560
002ac0  ab00c07f  lui r1, 523264
002ac4  63020ffe  loadli.w r4,  -256(r30)
002ac8  b71a06f4  beq r12, zero, -5468
002acc  1f860000  addli r12, r1, 0
002ad0  bb0a0af4  bneq r20, zero, -5472
002ad4  5b54fdff  j -5472
002ad8  ab00c07f  lui r1, 523264
002adc  b76b0af4  beq r20, zero, -5384
002ae0  1f8a0000  addli r20, r1, 0
002ae4  e3020ffe  loadli.w r5,  -256(r30)
002ae8  bbdb02f4  bneq r5, zero, -5388
002aec  db5efdff  j -5388
002af0  ab00c07f  lui r1, 523264
002af4  63420ffe  loadli.w r4,  -252(r30)
002af8  375d06f4  beq r12, zero, -5292
002afc  1f860000  addli r12, r1, 0
002b00  3b4d0ef4  bneq r28, zero, -5296
002b04  5b6afdff  j -5296
002b08  ab00c07f  lui r1, 523264
002b0c  b73e0ef4  beq r28, zero, -5204
002b10  1f8e0000  addli r28, r1, 0
002b14  e3420ffe  loadli.w r5,  -252(r30)
002b18  bbae02f4  bneq r5, zero, -5208
002b1c  5b75fdff  j -5208
002b20  ab00c07f  lui r1, 523264
002b24  63021ffe  loadli.w r4,  -248(r30)
002b28  37100ef6  beq r28, zero, -5116
002b2c  1f8e0000  addli r28, r1, 0
002b30  3b0003f6  bneq r6, zero, -5120
002b34  5b80fdff  j -5120
002b38  ab00c07f  lui r1, 523264
002b3c  376103f6  beq r6, zero, -5032
002b40  1f830000  addli r6, r1, 0
002b44  e3021ffe  loadli.w r5,  -248(r30)
002b48  3bd102f6  bneq r5, zero, -5036
002b4c  db8afdff  j -5036
002b50  ab00c07f  lui r1, 523264
002b54  63421ffe  loadli.w r4,  -244(r30)
002b58  b74203f6  beq r6, zero, -4944
002b5c  1f830000  addli r6, r1, 0
002b60  bb3204f6  bneq r8, zero, -4948
002b64  db95fdff  j -4948
002b68  ab00c07f  lui r1, 523264
002b6c  372404f6  beq r8, zero, -4856
002b70  1f840000  addli r8, r1, 0
002b74  e3421ffe  loadli.w r5,  -244(r30)
002b78  3b9402f6  bneq r5, zero, -4860
002b7c  dba0fdff  j -4860
002b80  ab00c07f  lui r1, 523264
002b84  63022ffe  loadli.w r4,  -240(r30)
002b88  b70504f6  beq r8, zero, -4768
002b8c  1f840000  addli r8, r1, 0
002b90  3bf504f6  bneq r9, zero, -4772
002b94  dbabfdff  j -4772
002b98  ab00c07f  lui r1, 523264
002b9c  b7e604f6  beq r9, zero, -4680
002ba0  9f840000  addli r9, r1, 0
002ba4  e3022ffe  loadli.w r5,  -240(r30)
002ba8  bbd602f6  bneq r5, zero, -4684
002bac  dbb6fdff  j -4684
002bb0  ab00c07f  lui r1, 523264
002bb4  63422ffe  loadli.w r4,  -236(r30)
002bb8  37c804f6  beq r9, zero, -4592
002bbc  9f840000  addli r9, r1, 0
002bc0  3b3805f6  bneq r10, zero, -4596
002bc4  dbc1fdff  j -4596
002bc8  ab00c07f  lui r1, 523264
002bcc  b72905f6  beq r10, zero, -4504
002bd0  1f850000  addli r10, r1, 0
002bd4  e3422ffe  loadli.w r5,  -236(r30)
002bd8  bb9902f6  bneq r5, zero, -4508
002bdc  dbccfdff  j -4508
002be0  ab00c07f  lui r1, 523264
002be4  63023ffe  loadli.w r4,  -232(r30)
002be8  370b05f6  beq r10, zero, -4416
002bec  1f850000  addli r10, r1, 0
002bf0  bb7a08f6  bneq r16, zero, -4420
002bf4  dbd7fdff  j -4420
002bf8  ab00c07f  lui r1, 523264
002bfc  375c08f6  beq r16, zero, -4332
002c00  1f880000  addli r16, r1, 0
002c04  e3023ffe  loadli.w r5,  -232(r30)
002c08  3bcc02f6  bneq r5, zero, -4336
002c0c  5be2fdff  j -4336
002c10  ab00c07f  lui r1, 523264
002c14  63024ffe  loadli.w r4,  -224(r30)
002c18  b73d08f6  beq r16, zero, -4244
002c1c  1f880000  addli r16, r1, 0
002c20  bbad04f6  bneq r9, zero, -4248
002c24  5bedfdff  j -4248
002c28  ab00c07f  lui r1, 523264
002c2c  378f04f6  beq r9, zero, -4160
002c30  9f840000  addli r9, r1, 0
002c34  e3024ffe  loadli.w r5,  -224(r30)
002c38  bbfe02f6  bneq r5, zero, -4164
002c3c  dbf7fdff  j -4164
002c40  ab00c07f  lui r1, 523264
002c44  37e00af8  beq r21, zero, -4072
002c48  9f8a0000  addli r21, r1, 0
002c4c  3b5004f8  bneq r8, zero, -4076
002c50  db02feff  j -4076
002c54  ab00c07f  lui r1, 523264
002c58  63424ffe  loadli.w r4,  -220(r30)
002c5c  b73104f8  beq r8, zero, -3988
002c60  1f840000  addli r8, r1, 0
002c64  bb2103f8  bneq r6, zero, -3992
002c68  5b0dfeff  j -3992
002c6c  ab00c07f  lui r1, 523264
002c70  63425ffe  loadli.w r4,  -212(r30)
002c74  37570af8  beq r20, zero, -3628
002c78  1f8a0000  addli r20, r1, 0
002c7c  3bc70df8  bneq r27, zero, -3632
002c80  5b3afeff  j -3632
002c84  ab00c07f  lui r1, 523264
002c88  1f8e0b00  addli r28, r23, 0
002c8c  b7fa0df8  beq r27, zero, -3396
002c90  9f8d0000  addli r27, r1, 0
002c94  bb6a0bf8  bneq r22, zero, -3400
002c98  5b57feff  j -3400
002c9c  ab00c07f  lui r1, 523264
002ca0  374c0bf8  beq r22, zero, -3312
002ca4  1f8b0000  addli r22, r1, 0
002ca8  3bbc0af8  bneq r21, zero, -3316
002cac  db61feff  j -3316
002cb0  ab00c07f  lui r1, 523264
002cb4  b79d0af8  beq r21, zero, -3228
002cb8  9f8a0000  addli r21, r1, 0
002cbc  bb8d06f8  bneq r13, zero, -3232
002cc0  5b6cfeff  j -3232
002cc4  ab00c07f  lui r1, 523264
002cc8  b7ee06f8  beq r13, zero, -3144
002ccc  9f860000  addli r13, r1, 0
002cd0  bb5e06f8  bneq r12, zero, -3148
002cd4  db76feff  j -3148
002cd8  ab00c07f  lui r1, 523264
002cdc  373006fa  beq r12, zero, -3060
002ce0  1f860000  addli r12, r1, 0
002ce4  3b2005fa  bneq r10, zero, -3064
002ce8  5b81feff  j -3064
002cec  ab00c07f  lui r1, 523264
002cf0  b70105fa  beq r10, zero, -2976
002cf4  1f850000  addli r10, r1, 0
002cf8  3bf104fa  bneq r9, zero, -2980
002cfc  db8bfeff  j -2980
002d00  ab00c07f  lui r1, 523264
002d04  b7d204fa  beq r9, zero, -2892
002d08  9f840000  addli r9, r1, 0
002d0c  bb4204fa  bneq r8, zero, -2896
002d10  5b96feff  j -2896
002d14  ab00c07f  lui r1, 523264
002d18  372404fa  beq r8, zero, -2808
002d1c  1f840000  addli r8, r1, 0
002d20  3b1403fa  bneq r6, zero, -2812
002d24  dba0feff  j -2812
002d28  9f8e0e04  addli sp, sp, 512
002d2c  00a00300  mfence { lm, sm, gm }
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
002f24  00100000  exit
002f28  00100000  exit
002f2c  00100000  exit
002f30  00100000  exit
002f34  00100000  exit
002f38  00100000  exit
002f3c  00100000  exit
002f40  00100000  exit
002f44  00100000  exit
002f48  00100000  exit
002f4c  00100000  exit
002f50  00100000  exit
002f54  00100000  exit
002f58  00100000  exit
002f5c  00100000  exit
002f60  00100000  exit
002f64  00100000  exit
002f68  00100000  exit
002f6c  00100000  exit
002f70  00100000  exit
