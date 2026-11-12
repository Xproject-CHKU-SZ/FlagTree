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
0000f0  80540002  load_param_i r9, 0
0000f4  e3434f00  loadli.w r7,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  9bb12000  slli r3, r1, 2
000100  1f010100  addli r2, r2, 0
000104  9b9af2ff  ori r21, r5, 4095
000108  abf27fff  lui r5, 1046527
00010c  63035f00  loadli.w r6,  40(r30)
000110  0b942110  add.s r8, r3, r2
000114  9b92f2ff  ori r5, r5, 4095
000118  0b924320  mul.s r4, r7, r4
00011c  73680440  stores.w zero, 1040(r8)
000120  00a00300  mfence { lm, sm, gm }
000124  80a10a04  csr_set csr3, r21
000128  00d00100  sync_group
00012c  e70d8ffc  storeli.w r8, -296(r30)
000130  73605400  stores.w r5, 0(r8)
000134  0b126220  mul.s r4, r4, r6
000138  00a00300  mfence { lm, sm, gm }
00013c  80a10a04  csr_set csr3, r21
000140  00d00100  sync_group
000144  674d4ffc  storeli.w r4, -300(r30)
000148  4b209216  ble.s r4, r9, 11272
00014c  1f028000  addli r4, zero, 64
000150  e303bffd  loadli.w r7,  -296(r30)
000154  1f150000  addli r10, zero, 1
000158  eb528f00  load.d r[6:7], 8(r30)
00015c  9f078ffe  addli r15, r30, -192
000160  9f080fff  addli r17, r30, -128
000164  1f090004  addli r18, zero, 512
000168  9f493000  addli r19, zero, 28
00016c  1f0a8fff  addli r20, r30, -64
000170  e7015fff  storeli.w r21, -232(r30)
000174  0b924030  div.s r4, r1, r4
000178  9f832308  addli r7, r7, 1040
00017c  e74c7ffc  storeli.w r7, -308(r30)
000180  80d30002  load_param_i r7, 1
000184  674c7ffc  storeli.w r7, -316(r30)
000188  670d4ffc  storeli.w r4, -304(r30)
00018c  1b326200  slli r4, r4, 6
000190  0b924018  sub.s r4, r1, r4
000194  9b80f003  andi r1, r1, 63
000198  1b324200  slli r4, r4, 4
00019c  e7431ffe  storeli.w r1, -196(r30)
0001a0  9b131200  ori r7, r4, 1
0001a4  e70c4ffc  storeli.w r4, -312(r30)
0001a8  670c7ffc  storeli.w r7, -320(r30)
0001ac  9b132200  ori r7, r4, 2
0001b0  e74b7ffc  storeli.w r7, -324(r30)
0001b4  9b133200  ori r7, r4, 3
0001b8  e70b7ffc  storeli.w r7, -328(r30)
0001bc  9b134200  ori r7, r4, 4
0001c0  674b7ffc  storeli.w r7, -332(r30)
0001c4  9b135200  ori r7, r4, 5
0001c8  670b7ffc  storeli.w r7, -336(r30)
0001cc  9b136200  ori r7, r4, 6
0001d0  e74a7ffc  storeli.w r7, -340(r30)
0001d4  9b137200  ori r7, r4, 7
0001d8  e70a7ffc  storeli.w r7, -344(r30)
0001dc  9b138200  ori r7, r4, 8
0001e0  674a7ffc  storeli.w r7, -348(r30)
0001e4  9b139200  ori r7, r4, 9
0001e8  670a7ffc  storeli.w r7, -352(r30)
0001ec  9b13a200  ori r7, r4, 10
0001f0  e7497ffc  storeli.w r7, -356(r30)
0001f4  9b13b200  ori r7, r4, 11
0001f8  e7097ffc  storeli.w r7, -360(r30)
0001fc  9b13c200  ori r7, r4, 12
000200  67497ffc  storeli.w r7, -364(r30)
000204  9b13d200  ori r7, r4, 13
000208  67097ffc  storeli.w r7, -368(r30)
00020c  9b13e200  ori r7, r4, 14
000210  e7487ffc  storeli.w r7, -372(r30)
000214  9b13f200  ori r7, r4, 15
000218  e7087ffc  storeli.w r7, -376(r30)
00021c  b3130228  sext_int2long r[8:9], r4
000220  2bf2ffff  lui r4, 1048575
000224  1b1202f0  ori r4, r4, 3840
000228  97b3a302  sll.d r[8:9], r[8:9], r10
00022c  97814100  and r3, r3, r4
000230  0ba27210  add.ul r[5:6], r[6:7], r[8:9]
000234  8b952110  add.s r11, r3, r2
000238  73304fe8  store.d r[5:6], -384(r30)
00023c  9f024000  addli r5, zero, 32
000240  1f872508  addli r14, r11, 1040
000244  9f000000  addli r1, zero, 0
000248  0b911710  add.s r2, r15, r1
00024c  9fc00000  addli r1, r1, 4
000250  73100100  store.h zero, 0(r2)
000254  73110100  store.h zero, 2(r2)
000258  00a00000  mfence { lm }
00025c  bbbf50fe  bneq r1, r5, -20
000260  e3005f00  loadli.w r1,  40(r30)
000264  63414f00  loadli.w r2,  36(r30)
000268  9f110000  addli r3, zero, 1
00026c  e7039ffe  storeli.w r9, -200(r30)
000270  8b901430  div.s r1, r9, r1
000274  8b902030  div.s r1, r1, r2
000278  6301affd  loadli.w r2,  -304(r30)
00027c  0b9d2010  add.s r26, r1, r2
000280  e3009ffd  loadli.w r1,  -312(r30)
000284  2b0100f0  lui r2, 983040
000288  9b3dad00  slli r27, r26, 10
00028c  17912200  or r2, r5, r2
000290  8b901d10  add.s r1, r27, r1
000294  33930028  sext_int2long r[7:8], r1
000298  ab0000f0  lui r1, 983040
00029c  73386ff2  store.d r[7:8], -208(r30)
0002a0  97313302  sll.d r[4:5], r[7:8], r3
0002a4  6b530f00  load.d r[7:8], 0(r30)
0002a8  97901200  or r1, r5, r1
0002ac  8b213310  add.ul r[4:5], r[7:8], r[4:5]
0002b0  7fa1f100  l_gm2lm r2, r15, 0(r[4:5])
0002b4  6b510fe8  load.d r[3:4], -384(r30)
0002b8  ff201101  l_gm2lm r1, r17, 0(r[3:4])
0002bc  00a00000  mfence { lm }
0002c0  eb300ff4  load.hu r1, -192(r30)
0002c4  6b312ff4  load.hu r2, -190(r30)
0002c8  eb310ff8  load.hu r3, -128(r30)
0002cc  6b322ff8  load.hu r4, -126(r30)
0002d0  b3900018  bfloat2float.rn r1, r1
0002d4  b3910118  bfloat2float.rn r3, r3
0002d8  33110118  bfloat2float.rn r2, r2
0002dc  33120218  bfloat2float.rn r4, r4
0002e0  0b684110  add.f.rn r16, r2, r4
0002e4  8be63010  add.f.rn r13, r1, r3
0002e8  9f820600  addli r5, r13, 0
0002ec  1f010800  addli r2, r16, 0
0002f0  3f302d01  blt.s r26, r18, 12
0002f4  ab0280ff  lui r5, 1046528
0002f8  2b0180ff  lui r2, 1046528
0002fc  9fac0700  addli r25, r15, 2
000300  9f010000  addli r3, zero, 0
000304  db020000  j 20
000308  9fc10100  addli r3, r3, 4
00030c  1f010200  addli r2, r4, 0
000310  9f820000  addli r5, r1, 0
000314  37c53101  beq r3, r19, 336
000318  0b923710  add.s r4, r15, r3
00031c  0b933810  add.s r6, r17, r3
000320  eb304200  load.hu r1, 4(r4)
000324  eb334300  load.hu r7, 4(r6)
000328  6b326200  load.hu r4, 6(r4)
00032c  6b336300  load.hu r6, 6(r6)
000330  b3900018  bfloat2float.rn r1, r1
000334  b3930318  bfloat2float.rn r7, r7
000338  8be07010  add.f.rn r1, r1, r7
00033c  9f830200  addli r7, r5, 0
000340  13e45004  setlt.f r8, r1, r5
000344  3b200400  bneq r8, zero, 8
000348  9f830000  addli r7, r1, 0
00034c  1bb49000  slli r8, r1, 9
000350  9bb49200  slli r9, r5, 9
000354  1bc57001  srli r10, r1, 23
000358  1bc67201  srli r12, r5, 23
00035c  13040400  seteq r8, r8, zero
000360  93840400  seteq r9, r9, zero
000364  1b05f50f  andi r10, r10, 255
000368  1b06f60f  andi r12, r12, 255
00036c  1b75f50f  setlti r10, r10, 255
000370  1b76f60f  setlti r12, r12, 255
000374  17148500  or r8, r10, r8
000378  97149600  or r9, r12, r9
00037c  17848400  and r8, r9, r8
000380  b7520400  beq r8, zero, 180
000384  1f840200  addli r8, r5, 0
000388  bbe20200  bneq r5, zero, 184
00038c  37a00000  beq r1, zero, 8
000390  9f000400  addli r1, r8, 0
000394  13647006  setle.f r8, zero, r7
000398  93e40306  setle.f r9, r7, zero
00039c  17848400  and r8, r9, r8
0003a0  3b200400  bneq r8, zero, 8
0003a4  9f800300  addli r1, r7, 0
0003a8  3f202d01  blt.s r26, r18, 8
0003ac  9f800200  addli r1, r5, 0
0003b0  33120218  bfloat2float.rn r4, r4
0003b4  b3120318  bfloat2float.rn r5, r6
0003b8  0b625210  add.f.rn r4, r4, r5
0003bc  9f020100  addli r5, r2, 0
0003c0  13632204  setlt.f r6, r4, r2
0003c4  3b200300  bneq r6, zero, 8
0003c8  9f020200  addli r5, r4, 0
0003cc  1b339200  slli r6, r4, 9
0003d0  9b339100  slli r7, r2, 9
0003d4  1b447201  srli r8, r4, 23
0003d8  9b447101  srli r9, r2, 23
0003dc  13030300  seteq r6, r6, zero
0003e0  93830300  seteq r7, r7, zero
0003e4  1b04f40f  andi r8, r8, 255
0003e8  9b84f40f  andi r9, r9, 255
0003ec  1b74f40f  setlti r8, r8, 255
0003f0  9bf4f40f  setlti r9, r9, 255
0003f4  17136400  or r6, r8, r6
0003f8  97937400  or r7, r9, r7
0003fc  17836300  and r6, r7, r6
000400  37310300  beq r6, zero, 76
000404  1f030100  addli r6, r2, 0
000408  3b410100  bneq r2, zero, 80
00040c  37200200  beq r4, zero, 8
000410  1f020300  addli r4, r6, 0
000414  13635006  setle.f r6, zero, r5
000418  93e30206  setle.f r7, r5, zero
00041c  17836300  and r6, r7, r6
000420  3b200300  bneq r6, zero, 8
000424  1f820200  addli r4, r5, 0
000428  bf0b2dff  blt.s r26, r18, -288
00042c  1f020100  addli r4, r2, 0
000430  5bdbffff  j -296
000434  ab03c07f  lui r7, 523264
000438  1f840200  addli r8, r5, 0
00043c  37cd02fe  beq r5, zero, -176
000440  1f840300  addli r8, r7, 0
000444  3bbd00fe  bneq r1, zero, -180
000448  dbe9ffff  j -180
00044c  ab02c07f  lui r5, 523264
000450  1f030100  addli r6, r2, 0
000454  b76e01fe  beq r2, zero, -72
000458  1f830200  addli r6, r5, 0
00045c  bb5e02fe  bneq r4, zero, -76
000460  dbf6ffff  j -76
000464  93611204  setlt.f r3, r4, r1
000468  1f810000  addli r2, r1, 0
00046c  3ba00100  bneq r3, zero, 8
000470  1f010200  addli r2, r4, 0
000474  9b319200  slli r3, r4, 9
000478  9bb29000  slli r5, r1, 9
00047c  1b437201  srli r6, r4, 23
000480  9bc37001  srli r7, r1, 23
000484  93810100  seteq r3, r3, zero
000488  93820200  seteq r5, r5, zero
00048c  1b03f30f  andi r6, r6, 255
000490  9b83f30f  andi r7, r7, 255
000494  1b73f30f  setlti r6, r6, 255
000498  9bf3f30f  setlti r7, r7, 255
00049c  97113300  or r3, r6, r3
0004a0  97925300  or r5, r7, r5
0004a4  97813200  and r3, r5, r3
0004a8  37a6010e  beq r3, zero, 7560
0004ac  3bb6000e  bneq r1, zero, 7564
0004b0  37200200  beq r4, zero, 8
0004b4  1f820000  addli r4, r1, 0
0004b8  93602006  setle.f r1, zero, r2
0004bc  93610106  setle.f r3, r2, zero
0004c0  97801100  and r1, r3, r1
0004c4  3ba00000  bneq r1, zero, 8
0004c8  1f020100  addli r4, r2, 0
0004cc  e300bffd  loadli.w r1,  -296(r30)
0004d0  73e04000  stores.w r4, 0(r1)
0004d4  00a00300  mfence { lm, sm, gm }
0004d8  80a10a04  csr_set csr3, r21
0004dc  00d00100  sync_group
0004e0  e3407ffe  loadli.w r1,  -196(r30)
0004e4  bbb4000e  bneq r1, zero, 7468
0004e8  efc10500  loads.w r3, 0(r11)
0004ec  efc04500  loads.w r1, 4(r11)
0004f0  13e23004  setlt.f r4, r1, r3
0004f4  1f810100  addli r2, r3, 0
0004f8  3b200200  bneq r4, zero, 8
0004fc  1f810000  addli r2, r1, 0
000500  1bb29100  slli r4, r3, 9
000504  9bb29000  slli r5, r1, 9
000508  1bc37101  srli r6, r3, 23
00050c  9bc37001  srli r7, r1, 23
000510  13020200  seteq r4, r4, zero
000514  93820200  seteq r5, r5, zero
000518  1b03f30f  andi r6, r6, 255
00051c  9b83f30f  andi r7, r7, 255
000520  1b73f30f  setlti r6, r6, 255
000524  9bf3f30f  setlti r7, r7, 255
000528  17124300  or r4, r6, r4
00052c  97925300  or r5, r7, r5
000530  17025200  and r4, r4, r5
000534  b76a0210  beq r4, zero, 8888
000538  bbfa0110  bneq r3, zero, 8892
00053c  37a00000  beq r1, zero, 8
000540  9f800100  addli r1, r3, 0
000544  93612006  setle.f r3, zero, r2
000548  13620106  setle.f r4, r2, zero
00054c  97013200  and r3, r4, r3
000550  3ba00100  bneq r3, zero, 8
000554  9f000100  addli r1, r2, 0
000558  efc38500  loads.w r7, 8(r11)
00055c  1f810000  addli r2, r1, 0
000560  93e11304  setlt.f r3, r7, r1
000564  3ba00100  bneq r3, zero, 8
000568  1f810300  addli r2, r7, 0
00056c  9bb19300  slli r3, r7, 9
000570  1bb29000  slli r4, r1, 9
000574  9bc27301  srli r5, r7, 23
000578  1bc37001  srli r6, r1, 23
00057c  93810100  seteq r3, r3, zero
000580  13020200  seteq r4, r4, zero
000584  9b82f20f  andi r5, r5, 255
000588  1b03f30f  andi r6, r6, 255
00058c  9bf2f20f  setlti r5, r5, 255
000590  1b73f30f  setlti r6, r6, 255
000594  97913200  or r3, r5, r3
000598  17124300  or r4, r6, r4
00059c  97013200  and r3, r4, r3
0005a0  b7890110  beq r3, zero, 8800
0005a4  bb990010  bneq r1, zero, 8804
0005a8  37a00300  beq r7, zero, 8
0005ac  9f830000  addli r7, r1, 0
0005b0  93602006  setle.f r1, zero, r2
0005b4  93610106  setle.f r3, r2, zero
0005b8  67470ffd  storeli.w r16, -396(r30)
0005bc  e707dffc  storeli.w r13, -392(r30)
0005c0  e747bffd  storeli.w r27, -388(r30)
0005c4  97801100  and r1, r3, r1
0005c8  3ba00000  bneq r1, zero, 8
0005cc  9f030100  addli r7, r2, 0
0005d0  efc20504  loads.w r5, 64(r11)
0005d4  6fc8c500  loads.w r16, 12(r11)
0005d8  6fc50501  loads.w r10, 16(r11)
0005dc  6fcc4501  loads.w r24, 20(r11)
0005e0  6fc18501  loads.w r2, 24(r11)
0005e4  6fc4c501  loads.w r8, 28(r11)
0005e8  6fc30502  loads.w r6, 32(r11)
0005ec  efc14502  loads.w r3, 36(r11)
0005f0  6fc68502  loads.w r12, 40(r11)
0005f4  efc6c502  loads.w r13, 44(r11)
0005f8  efc00503  loads.w r1, 48(r11)
0005fc  6fce4503  loads.w r28, 52(r11)
000600  efcb8503  loads.w r23, 56(r11)
000604  6fc2c503  loads.w r4, 60(r11)
000608  6fca450e  loads.w r20, 228(r11)
00060c  9f8d0300  addli r27, r7, 0
000610  e74d5ffc  storeli.w r5, -292(r30)
000614  efc24504  loads.w r5, 68(r11)
000618  136b7804  setlt.f r22, r16, r7
00061c  670e5ffc  storeli.w r5, -288(r30)
000620  efc28504  loads.w r5, 72(r11)
000624  67405ffc  storeli.w r5, -508(r30)
000628  efc2c504  loads.w r5, 76(r11)
00062c  674e5ffc  storeli.w r5, -284(r30)
000630  efc20505  loads.w r5, 80(r11)
000634  e7005ffc  storeli.w r5, -504(r30)
000638  efc24505  loads.w r5, 84(r11)
00063c  e70e5ffc  storeli.w r5, -280(r30)
000640  efc28505  loads.w r5, 88(r11)
000644  e7405ffc  storeli.w r5, -500(r30)
000648  efc2c505  loads.w r5, 92(r11)
00064c  e74e5ffc  storeli.w r5, -276(r30)
000650  efc20506  loads.w r5, 96(r11)
000654  67015ffc  storeli.w r5, -496(r30)
000658  efc24506  loads.w r5, 100(r11)
00065c  670f5ffc  storeli.w r5, -272(r30)
000660  efc28506  loads.w r5, 104(r11)
000664  67415ffc  storeli.w r5, -492(r30)
000668  efc2c506  loads.w r5, 108(r11)
00066c  674f5ffc  storeli.w r5, -268(r30)
000670  efc20507  loads.w r5, 112(r11)
000674  e7015ffc  storeli.w r5, -488(r30)
000678  efc24507  loads.w r5, 116(r11)
00067c  e70f5ffc  storeli.w r5, -264(r30)
000680  efc28507  loads.w r5, 120(r11)
000684  e7415ffc  storeli.w r5, -484(r30)
000688  efc2c507  loads.w r5, 124(r11)
00068c  e74f5ffc  storeli.w r5, -260(r30)
000690  efc20508  loads.w r5, 128(r11)
000694  67025ffc  storeli.w r5, -480(r30)
000698  efc24508  loads.w r5, 132(r11)
00069c  67005ffe  storeli.w r5, -256(r30)
0006a0  efc28508  loads.w r5, 136(r11)
0006a4  67425ffc  storeli.w r5, -476(r30)
0006a8  efc2c508  loads.w r5, 140(r11)
0006ac  67405ffe  storeli.w r5, -252(r30)
0006b0  efc20509  loads.w r5, 144(r11)
0006b4  e7025ffc  storeli.w r5, -472(r30)
0006b8  efc24509  loads.w r5, 148(r11)
0006bc  e7005ffe  storeli.w r5, -248(r30)
0006c0  efc28509  loads.w r5, 152(r11)
0006c4  e7425ffc  storeli.w r5, -468(r30)
0006c8  efc2c509  loads.w r5, 156(r11)
0006cc  e7405ffe  storeli.w r5, -244(r30)
0006d0  efc2050a  loads.w r5, 160(r11)
0006d4  67035ffc  storeli.w r5, -464(r30)
0006d8  efc2450a  loads.w r5, 164(r11)
0006dc  67015ffe  storeli.w r5, -240(r30)
0006e0  efc2850a  loads.w r5, 168(r11)
0006e4  67435ffc  storeli.w r5, -460(r30)
0006e8  efc2c50a  loads.w r5, 172(r11)
0006ec  67415ffe  storeli.w r5, -236(r30)
0006f0  efc2050b  loads.w r5, 176(r11)
0006f4  e7035ffc  storeli.w r5, -456(r30)
0006f8  efc2450b  loads.w r5, 180(r11)
0006fc  67045ffc  storeli.w r5, -448(r30)
000700  efc2850b  loads.w r5, 184(r11)
000704  e7415ffe  storeli.w r5, -228(r30)
000708  efc2c50b  loads.w r5, 188(r11)
00070c  67025ffe  storeli.w r5, -224(r30)
000710  efc2050c  loads.w r5, 192(r11)
000714  67445ffc  storeli.w r5, -444(r30)
000718  efc2450c  loads.w r5, 196(r11)
00071c  67425ffe  storeli.w r5, -220(r30)
000720  efc2850c  loads.w r5, 200(r11)
000724  e7045ffc  storeli.w r5, -440(r30)
000728  efc2c50c  loads.w r5, 204(r11)
00072c  e7025ffe  storeli.w r5, -216(r30)
000730  efc2050d  loads.w r5, 208(r11)
000734  e7445ffc  storeli.w r5, -436(r30)
000738  efc2450d  loads.w r5, 212(r11)
00073c  e7425ffe  storeli.w r5, -212(r30)
000740  efc2850d  loads.w r5, 216(r11)
000744  67055ffc  storeli.w r5, -432(r30)
000748  efc2c50d  loads.w r5, 220(r11)
00074c  67455ffc  storeli.w r5, -428(r30)
000750  efc2050e  loads.w r5, 224(r11)
000754  e7055ffc  storeli.w r5, -424(r30)
000758  efc2850e  loads.w r5, 232(r11)
00075c  e7455ffc  storeli.w r5, -420(r30)
000760  efc2c50e  loads.w r5, 236(r11)
000764  67065ffc  storeli.w r5, -416(r30)
000768  efc2050f  loads.w r5, 240(r11)
00076c  67465ffc  storeli.w r5, -412(r30)
000770  efc2450f  loads.w r5, 244(r11)
000774  e7065ffc  storeli.w r5, -408(r30)
000778  efc2850f  loads.w r5, 248(r11)
00077c  e7465ffc  storeli.w r5, -404(r30)
000780  efc2c50f  loads.w r5, 252(r11)
000784  67075ffc  storeli.w r5, -400(r30)
000788  3b200b00  bneq r22, zero, 8
00078c  9f0d0800  addli r27, r16, 0
000790  1b3b9800  slli r22, r16, 9
000794  9bba9300  slli r21, r7, 9
000798  9b427801  srli r5, r16, 23
00079c  9bc47301  srli r9, r7, 23
0007a0  130b0b00  seteq r22, r22, zero
0007a4  938a0a00  seteq r21, r21, zero
0007a8  9b82f20f  andi r5, r5, 255
0007ac  9b84f40f  andi r9, r9, 255
0007b0  9bf2f20f  setlti r5, r5, 255
0007b4  9bf4f40f  setlti r9, r9, 255
0007b8  97926201  or r5, r5, r22
0007bc  97945401  or r9, r9, r21
0007c0  97825400  and r5, r9, r5
0007c4  37c10210  beq r5, zero, 8272
0007c8  3bd10310  bneq r7, zero, 8276
0007cc  37200800  beq r16, zero, 8
0007d0  1f880300  addli r16, r7, 0
0007d4  9362b007  setle.f r5, zero, r27
0007d8  93e30d06  setle.f r7, r27, zero
0007dc  97825300  and r5, r7, r5
0007e0  3ba00200  bneq r5, zero, 8
0007e4  1f880d00  addli r16, r27, 0
0007e8  93620505  setlt.f r5, r10, r16
0007ec  9f030800  addli r7, r16, 0
0007f0  3ba00200  bneq r5, zero, 8
0007f4  9f030500  addli r7, r10, 0
0007f8  9b329500  slli r5, r10, 9
0007fc  9b349800  slli r9, r16, 9
000800  9b4a7501  srli r21, r10, 23
000804  1b4b7801  srli r22, r16, 23
000808  e34dfffc  loadli.w r27,  -388(r30)
00080c  93820200  seteq r5, r5, zero
000810  93840400  seteq r9, r9, zero
000814  9b8afa0f  andi r21, r21, 255
000818  1b0bfb0f  andi r22, r22, 255
00081c  9bfafa0f  setlti r21, r21, 255
000820  1b7bfb0f  setlti r22, r22, 255
000824  97925a00  or r5, r21, r5
000828  97149b00  or r9, r22, r9
00082c  97825400  and r5, r9, r5
000830  3ba00200  bneq r5, zero, 8
000834  ab03c07f  lui r7, 523264
000838  634b3ffc  loadli.w r22,  -484(r30)
00083c  e7434ffd  storeli.w r20, -452(r30)
000840  37200800  beq r16, zero, 8
000844  1f880300  addli r16, r7, 0
000848  1f0a8fff  addli r20, r30, -64
00084c  37200500  beq r10, zero, 8
000850  1f050800  addli r10, r16, 0
000854  93627006  setle.f r5, zero, r7
000858  93e40306  setle.f r9, r7, zero
00085c  97825400  and r5, r9, r5
000860  3ba00200  bneq r5, zero, 8
000864  1f850300  addli r10, r7, 0
000868  9362ac04  setlt.f r5, r24, r10
00086c  9f030500  addli r7, r10, 0
000870  3ba00200  bneq r5, zero, 8
000874  9f030c00  addli r7, r24, 0
000878  9b329c00  slli r5, r24, 9
00087c  9b349500  slli r9, r10, 9
000880  1b487c01  srli r16, r24, 23
000884  9b4a7501  srli r21, r10, 23
000888  93820200  seteq r5, r5, zero
00088c  93840400  seteq r9, r9, zero
000890  1b08f80f  andi r16, r16, 255
000894  9b8afa0f  andi r21, r21, 255
000898  1b78f80f  setlti r16, r16, 255
00089c  9bfafa0f  setlti r21, r21, 255
0008a0  97125800  or r5, r16, r5
0008a4  97949a00  or r9, r21, r9
0008a8  97825400  and r5, r9, r5
0008ac  b7fd020e  beq r5, zero, 8060
0008b0  e30a3ffc  loadli.w r21,  -488(r30)
0008b4  3b0e050e  bneq r10, zero, 8064
0008b8  37200c00  beq r24, zero, 8
0008bc  1f0c0500  addli r24, r10, 0
0008c0  93627006  setle.f r5, zero, r7
0008c4  93e40306  setle.f r9, r7, zero
0008c8  97825400  and r5, r9, r5
0008cc  3ba00200  bneq r5, zero, 8
0008d0  1f8c0300  addli r24, r7, 0
0008d4  93628105  setlt.f r5, r2, r24
0008d8  9f030c00  addli r7, r24, 0
0008dc  3ba00200  bneq r5, zero, 8
0008e0  9f030100  addli r7, r2, 0
0008e4  9b329100  slli r5, r2, 9
0008e8  9b349c00  slli r9, r24, 9
0008ec  1b457101  srli r10, r2, 23
0008f0  1b487c01  srli r16, r24, 23
0008f4  93820200  seteq r5, r5, zero
0008f8  93840400  seteq r9, r9, zero
0008fc  1b05f50f  andi r10, r10, 255
000900  1b08f80f  andi r16, r16, 255
000904  1b75f50f  setlti r10, r10, 255
000908  1b78f80f  setlti r16, r16, 255
00090c  97125500  or r5, r10, r5
000910  97149800  or r9, r16, r9
000914  97825400  and r5, r9, r5
000918  b7ac020e  beq r5, zero, 7976
00091c  bb3c0c0e  bneq r24, zero, 7980
000920  37200100  beq r2, zero, 8
000924  1f010c00  addli r2, r24, 0
000928  93627006  setle.f r5, zero, r7
00092c  93e40306  setle.f r9, r7, zero
000930  97825400  and r5, r9, r5
000934  3ba00200  bneq r5, zero, 8
000938  1f810300  addli r2, r7, 0
00093c  93622404  setlt.f r5, r8, r2
000940  630c1ffc  loadli.w r24,  -504(r30)
000944  9f030100  addli r7, r2, 0
000948  3ba00200  bneq r5, zero, 8
00094c  9f030400  addli r7, r8, 0
000950  9b329400  slli r5, r8, 9
000954  9b349100  slli r9, r2, 9
000958  1b457401  srli r10, r8, 23
00095c  1b487101  srli r16, r2, 23
000960  93820200  seteq r5, r5, zero
000964  93840400  seteq r9, r9, zero
000968  1b05f50f  andi r10, r10, 255
00096c  1b08f80f  andi r16, r16, 255
000970  1b75f50f  setlti r10, r10, 255
000974  1b78f80f  setlti r16, r16, 255
000978  97125500  or r5, r10, r5
00097c  97149800  or r9, r16, r9
000980  97825400  and r5, r9, r5
000984  37cb020e  beq r5, zero, 7888
000988  63082ffc  loadli.w r16,  -496(r30)
00098c  3b5b010e  bneq r2, zero, 7892
000990  37200400  beq r8, zero, 8
000994  1f040100  addli r8, r2, 0
000998  13617006  setle.f r2, zero, r7
00099c  93e20306  setle.f r5, r7, zero
0009a0  17812200  and r2, r5, r2
0009a4  3b200100  bneq r2, zero, 8
0009a8  1f840300  addli r8, r7, 0
0009ac  93628304  setlt.f r5, r6, r8
0009b0  1f010400  addli r2, r8, 0
0009b4  3ba00200  bneq r5, zero, 8
0009b8  1f010300  addli r2, r6, 0
0009bc  9b329300  slli r5, r6, 9
0009c0  9b339400  slli r7, r8, 9
0009c4  9b447301  srli r9, r6, 23
0009c8  1b457401  srli r10, r8, 23
0009cc  93820200  seteq r5, r5, zero
0009d0  93830300  seteq r7, r7, zero
0009d4  9b84f40f  andi r9, r9, 255
0009d8  1b05f50f  andi r10, r10, 255
0009dc  9bf4f40f  setlti r9, r9, 255
0009e0  1b75f50f  setlti r10, r10, 255
0009e4  97925400  or r5, r9, r5
0009e8  97137500  or r7, r10, r7
0009ec  97825300  and r5, r7, r5
0009f0  b7f9020e  beq r5, zero, 7804
0009f4  63056ffc  loadli.w r10,  -464(r30)
0009f8  3b0a040e  bneq r8, zero, 7808
0009fc  37200300  beq r6, zero, 8
000a00  1f030400  addli r6, r8, 0
000a04  93622006  setle.f r5, zero, r2
000a08  93630106  setle.f r7, r2, zero
000a0c  97825300  and r5, r7, r5
000a10  3ba00200  bneq r5, zero, 8
000a14  1f030100  addli r6, r2, 0
000a18  93e26104  setlt.f r5, r3, r6
000a1c  1f010300  addli r2, r6, 0
000a20  3ba00200  bneq r5, zero, 8
000a24  1f810100  addli r2, r3, 0
000a28  9bb29100  slli r5, r3, 9
000a2c  9b339300  slli r7, r6, 9
000a30  1bc47101  srli r8, r3, 23
000a34  9b447301  srli r9, r6, 23
000a38  93820200  seteq r5, r5, zero
000a3c  93830300  seteq r7, r7, zero
000a40  1b04f40f  andi r8, r8, 255
000a44  9b84f40f  andi r9, r9, 255
000a48  1b74f40f  setlti r8, r8, 255
000a4c  9bf4f40f  setlti r9, r9, 255
000a50  97125400  or r5, r8, r5
000a54  97937400  or r7, r9, r7
000a58  97825300  and r5, r7, r5
000a5c  b7a8020e  beq r5, zero, 7720
000a60  e3445ffc  loadli.w r9,  -468(r30)
000a64  bb38030e  bneq r6, zero, 7724
000a68  37a00100  beq r3, zero, 8
000a6c  9f010300  addli r3, r6, 0
000a70  93622006  setle.f r5, zero, r2
000a74  13630106  setle.f r6, r2, zero
000a78  97025300  and r5, r6, r5
000a7c  3ba00200  bneq r5, zero, 8
000a80  9f010100  addli r3, r2, 0
000a84  93623604  setlt.f r5, r12, r3
000a88  1f810100  addli r2, r3, 0
000a8c  3ba00200  bneq r5, zero, 8
000a90  1f010600  addli r2, r12, 0
000a94  9b329600  slli r5, r12, 9
000a98  1bb39100  slli r6, r3, 9
000a9c  9b437601  srli r7, r12, 23
000aa0  1bc47101  srli r8, r3, 23
000aa4  93820200  seteq r5, r5, zero
000aa8  13030300  seteq r6, r6, zero
000aac  9b83f30f  andi r7, r7, 255
000ab0  1b04f40f  andi r8, r8, 255
000ab4  9bf3f30f  setlti r7, r7, 255
000ab8  1b74f40f  setlti r8, r8, 255
000abc  97925300  or r5, r7, r5
000ac0  17136400  or r6, r8, r6
000ac4  97025300  and r5, r6, r5
000ac8  37d7020e  beq r5, zero, 7636
000acc  63045ffc  loadli.w r8,  -472(r30)
000ad0  3be7010e  bneq r3, zero, 7640
000ad4  37200600  beq r12, zero, 8
000ad8  1f860100  addli r12, r3, 0
000adc  93612006  setle.f r3, zero, r2
000ae0  93620106  setle.f r5, r2, zero
000ae4  97813200  and r3, r5, r3
000ae8  3ba00100  bneq r3, zero, 8
000aec  1f060100  addli r12, r2, 0
000af0  93e1c604  setlt.f r3, r13, r12
000af4  1f010600  addli r2, r12, 0
000af8  3ba00100  bneq r3, zero, 8
000afc  1f810600  addli r2, r13, 0
000b00  9bb19600  slli r3, r13, 9
000b04  9b329600  slli r5, r12, 9
000b08  1bc37601  srli r6, r13, 23
000b0c  9b437601  srli r7, r12, 23
000b10  93810100  seteq r3, r3, zero
000b14  93820200  seteq r5, r5, zero
000b18  1b03f30f  andi r6, r6, 255
000b1c  9b83f30f  andi r7, r7, 255
000b20  1b73f30f  setlti r6, r6, 255
000b24  9bf3f30f  setlti r7, r7, 255
000b28  97113300  or r3, r6, r3
000b2c  97925300  or r5, r7, r5
000b30  97813200  and r3, r5, r3
000b34  3786010e  beq r3, zero, 7552
000b38  3b16060e  bneq r12, zero, 7556
000b3c  37a00600  beq r13, zero, 8
000b40  9f060600  addli r13, r12, 0
000b44  93612006  setle.f r3, zero, r2
000b48  93620106  setle.f r5, r2, zero
000b4c  97813200  and r3, r5, r3
000b50  3ba00100  bneq r3, zero, 8
000b54  9f060100  addli r13, r2, 0
000b58  93e1d004  setlt.f r3, r1, r13
000b5c  63464ffc  loadli.w r12,  -476(r30)
000b60  1f810600  addli r2, r13, 0
000b64  3ba00100  bneq r3, zero, 8
000b68  1f810000  addli r2, r1, 0
000b6c  9bb19000  slli r3, r1, 9
000b70  9bb29600  slli r5, r13, 9
000b74  1bc37001  srli r6, r1, 23
000b78  9bc37601  srli r7, r13, 23
000b7c  93810100  seteq r3, r3, zero
000b80  93820200  seteq r5, r5, zero
000b84  1b03f30f  andi r6, r6, 255
000b88  9b83f30f  andi r7, r7, 255
000b8c  1b73f30f  setlti r6, r6, 255
000b90  9bf3f30f  setlti r7, r7, 255
000b94  97113300  or r3, r6, r3
000b98  97925300  or r5, r7, r5
000b9c  97813200  and r3, r5, r3
000ba0  b7a4010e  beq r3, zero, 7464
000ba4  bbb4060e  bneq r13, zero, 7468
000ba8  37a00000  beq r1, zero, 8
000bac  9f800600  addli r1, r13, 0
000bb0  93612006  setle.f r3, zero, r2
000bb4  93620106  setle.f r5, r2, zero
000bb8  97813200  and r3, r5, r3
000bbc  3ba00100  bneq r3, zero, 8
000bc0  9f000100  addli r1, r2, 0
000bc4  93611e04  setlt.f r3, r28, r1
000bc8  e3460ffc  loadli.w r13,  -508(r30)
000bcc  1f810000  addli r2, r1, 0
000bd0  3ba00100  bneq r3, zero, 8
000bd4  1f010e00  addli r2, r28, 0
000bd8  9b319e00  slli r3, r28, 9
000bdc  9bb29000  slli r5, r1, 9
000be0  1b437e01  srli r6, r28, 23
000be4  9bc37001  srli r7, r1, 23
000be8  93810100  seteq r3, r3, zero
000bec  93820200  seteq r5, r5, zero
000bf0  1b03f30f  andi r6, r6, 255
000bf4  9b83f30f  andi r7, r7, 255
000bf8  1b73f30f  setlti r6, r6, 255
000bfc  9bf3f30f  setlti r7, r7, 255
000c00  97113300  or r3, r6, r3
000c04  97925300  or r5, r7, r5
000c08  97813200  and r3, r5, r3
000c0c  37c3010e  beq r3, zero, 7376
000c10  e3034ffc  loadli.w r7,  -480(r30)
000c14  3bd3000e  bneq r1, zero, 7380
000c18  37200e00  beq r28, zero, 8
000c1c  1f8e0000  addli r28, r1, 0
000c20  93602006  setle.f r1, zero, r2
000c24  93610106  setle.f r3, r2, zero
000c28  97801100  and r1, r3, r1
000c2c  3ba00000  bneq r1, zero, 8
000c30  1f0e0100  addli r28, r2, 0
000c34  13e1cb05  setlt.f r2, r23, r28
000c38  9f000e00  addli r1, r28, 0
000c3c  3b200100  bneq r2, zero, 8
000c40  9f800b00  addli r1, r23, 0
000c44  1bb19b00  slli r2, r23, 9
000c48  9b319e00  slli r3, r28, 9
000c4c  9bc27b01  srli r5, r23, 23
000c50  1b437e01  srli r6, r28, 23
000c54  13010100  seteq r2, r2, zero
000c58  93810100  seteq r3, r3, zero
000c5c  9b82f20f  andi r5, r5, 255
000c60  1b03f30f  andi r6, r6, 255
000c64  9bf2f20f  setlti r5, r5, 255
000c68  1b73f30f  setlti r6, r6, 255
000c6c  17912200  or r2, r5, r2
000c70  97113300  or r3, r6, r3
000c74  17812100  and r2, r3, r2
000c78  b771010e  beq r2, zero, 7292
000c7c  3b020e0e  bneq r28, zero, 7296
000c80  37a00b00  beq r23, zero, 8
000c84  9f0b0e00  addli r23, r28, 0
000c88  13611006  setle.f r2, zero, r1
000c8c  93e10006  setle.f r3, r1, zero
000c90  17812100  and r2, r3, r2
000c94  3b200100  bneq r2, zero, 8
000c98  9f8b0000  addli r23, r1, 0
000c9c  13617205  setlt.f r2, r4, r23
000ca0  634e1ffc  loadli.w r28,  -500(r30)
000ca4  9f800b00  addli r1, r23, 0
000ca8  3b200100  bneq r2, zero, 8
000cac  9f000200  addli r1, r4, 0
000cb0  1b319200  slli r2, r4, 9
000cb4  9bb19b00  slli r3, r23, 9
000cb8  9b427201  srli r5, r4, 23
000cbc  1bc37b01  srli r6, r23, 23
000cc0  13010100  seteq r2, r2, zero
000cc4  93810100  seteq r3, r3, zero
000cc8  9b82f20f  andi r5, r5, 255
000ccc  1b03f30f  andi r6, r6, 255
000cd0  9bf2f20f  setlti r5, r5, 255
000cd4  1b73f30f  setlti r6, r6, 255
000cd8  17912200  or r2, r5, r2
000cdc  97113300  or r3, r6, r3
000ce0  17812100  and r2, r3, r2
000ce4  b710010e  beq r2, zero, 7204
000ce8  e342bffd  loadli.w r5,  -292(r30)
000cec  bba00b0e  bneq r23, zero, 7208
000cf0  37200200  beq r4, zero, 8
000cf4  1f820b00  addli r4, r23, 0
000cf8  13611006  setle.f r2, zero, r1
000cfc  93e10006  setle.f r3, r1, zero
000d00  17812100  and r2, r3, r2
000d04  3b200100  bneq r2, zero, 8
000d08  1f820000  addli r4, r1, 0
000d0c  13e14204  setlt.f r2, r5, r4
000d10  e34b2ffc  loadli.w r23,  -492(r30)
000d14  9f000200  addli r1, r4, 0
000d18  3b200100  bneq r2, zero, 8
000d1c  9f800200  addli r1, r5, 0
000d20  1bb19200  slli r2, r5, 9
000d24  9b319200  slli r3, r4, 9
000d28  9bc27201  srli r5, r5, 23
000d2c  1b437201  srli r6, r4, 23
000d30  13010100  seteq r2, r2, zero
000d34  93810100  seteq r3, r3, zero
000d38  9b82f20f  andi r5, r5, 255
000d3c  1b03f30f  andi r6, r6, 255
000d40  9bf2f20f  setlti r5, r5, 255
000d44  1b73f30f  setlti r6, r6, 255
000d48  17912200  or r2, r5, r2
000d4c  97113300  or r3, r6, r3
000d50  17812100  and r2, r3, r2
000d54  373f010c  beq r2, zero, 7116
000d58  e302cffd  loadli.w r5,  -288(r30)
000d5c  3b4f020c  bneq r4, zero, 7120
000d60  6343bffd  loadli.w r6,  -292(r30)
000d64  37200300  beq r6, zero, 8
000d68  1f030200  addli r6, r4, 0
000d6c  13611006  setle.f r2, zero, r1
000d70  93e10006  setle.f r3, r1, zero
000d74  17812100  and r2, r3, r2
000d78  3b200100  bneq r2, zero, 8
000d7c  1f830000  addli r6, r1, 0
000d80  13e16204  setlt.f r2, r5, r6
000d84  9f000300  addli r1, r6, 0
000d88  3b200100  bneq r2, zero, 8
000d8c  9f800200  addli r1, r5, 0
000d90  1bb19200  slli r2, r5, 9
000d94  9b319300  slli r3, r6, 9
000d98  1bc27201  srli r4, r5, 23
000d9c  9b427301  srli r5, r6, 23
000da0  13010100  seteq r2, r2, zero
000da4  93810100  seteq r3, r3, zero
000da8  1b02f20f  andi r4, r4, 255
000dac  9b82f20f  andi r5, r5, 255
000db0  1b72f20f  setlti r4, r4, 255
000db4  9bf2f20f  setlti r5, r5, 255
000db8  17112200  or r2, r4, r2
000dbc  97913200  or r3, r5, r3
000dc0  17812100  and r2, r3, r2
000dc4  b76d010c  beq r2, zero, 7032
000dc8  bb7d030c  bneq r6, zero, 7036
000dcc  e302cffd  loadli.w r5,  -288(r30)
000dd0  37a00200  beq r5, zero, 8
000dd4  9f020300  addli r5, r6, 0
000dd8  13611006  setle.f r2, zero, r1
000ddc  93e10006  setle.f r3, r1, zero
000de0  17812100  and r2, r3, r2
000de4  3b200100  bneq r2, zero, 8
000de8  9f820000  addli r5, r1, 0
000dec  13e15604  setlt.f r2, r13, r5
000df0  9f800200  addli r1, r5, 0
000df4  3b200100  bneq r2, zero, 8
000df8  9f800600  addli r1, r13, 0
000dfc  1bb19600  slli r2, r13, 9
000e00  9bb19200  slli r3, r5, 9
000e04  1bc27601  srli r4, r13, 23
000e08  1f830200  addli r6, r5, 0
000e0c  9bc27201  srli r5, r5, 23
000e10  13010100  seteq r2, r2, zero
000e14  93810100  seteq r3, r3, zero
000e18  1b02f20f  andi r4, r4, 255
000e1c  9b82f20f  andi r5, r5, 255
000e20  1b72f20f  setlti r4, r4, 255
000e24  9bf2f20f  setlti r5, r5, 255
000e28  17112200  or r2, r4, r2
000e2c  97913200  or r3, r5, r3
000e30  17812100  and r2, r3, r2
000e34  b70c010c  beq r2, zero, 6944
000e38  6342cffd  loadli.w r4,  -284(r30)
000e3c  bb1c030c  bneq r6, zero, 6948
000e40  37a00600  beq r13, zero, 8
000e44  9f060300  addli r13, r6, 0
000e48  13611006  setle.f r2, zero, r1
000e4c  93e10006  setle.f r3, r1, zero
000e50  17812100  and r2, r3, r2
000e54  3b200100  bneq r2, zero, 8
000e58  9f860000  addli r13, r1, 0
000e5c  1361d204  setlt.f r2, r4, r13
000e60  9f800600  addli r1, r13, 0
000e64  3b200100  bneq r2, zero, 8
000e68  9f000200  addli r1, r4, 0
000e6c  1b319200  slli r2, r4, 9
000e70  9bb19600  slli r3, r13, 9
000e74  1b427201  srli r4, r4, 23
000e78  9bc27601  srli r5, r13, 23
000e7c  13010100  seteq r2, r2, zero
000e80  93810100  seteq r3, r3, zero
000e84  1b02f20f  andi r4, r4, 255
000e88  9b82f20f  andi r5, r5, 255
000e8c  1b72f20f  setlti r4, r4, 255
000e90  9bf2f20f  setlti r5, r5, 255
000e94  17112200  or r2, r4, r2
000e98  97913200  or r3, r5, r3
000e9c  17812100  and r2, r3, r2
000ea0  373b010c  beq r2, zero, 6860
000ea4  3bcb060c  bneq r13, zero, 6864
000ea8  e342cffd  loadli.w r5,  -284(r30)
000eac  37a00200  beq r5, zero, 8
000eb0  9f820600  addli r5, r13, 0
000eb4  13611006  setle.f r2, zero, r1
000eb8  93e10006  setle.f r3, r1, zero
000ebc  17812100  and r2, r3, r2
000ec0  3b200100  bneq r2, zero, 8
000ec4  9f820000  addli r5, r1, 0
000ec8  13615c04  setlt.f r2, r24, r5
000ecc  9f800200  addli r1, r5, 0
000ed0  3b200100  bneq r2, zero, 8
000ed4  9f000c00  addli r1, r24, 0
000ed8  1b319c00  slli r2, r24, 9
000edc  9bb19200  slli r3, r5, 9
000ee0  1b427c01  srli r4, r24, 23
000ee4  9f860200  addli r13, r5, 0
000ee8  9bc27201  srli r5, r5, 23
000eec  13010100  seteq r2, r2, zero
000ef0  93810100  seteq r3, r3, zero
000ef4  1b02f20f  andi r4, r4, 255
000ef8  9b82f20f  andi r5, r5, 255
000efc  1b72f20f  setlti r4, r4, 255
000f00  9bf2f20f  setlti r5, r5, 255
000f04  17112200  or r2, r4, r2
000f08  97913200  or r3, r5, r3
000f0c  17812100  and r2, r3, r2
000f10  b759010c  beq r2, zero, 6772
000f14  6302dffd  loadli.w r4,  -280(r30)
000f18  bbe9060c  bneq r13, zero, 6776
000f1c  37200c00  beq r24, zero, 8
000f20  1f8c0600  addli r24, r13, 0
000f24  13611006  setle.f r2, zero, r1
000f28  93e10006  setle.f r3, r1, zero
000f2c  17812100  and r2, r3, r2
000f30  3b200100  bneq r2, zero, 8
000f34  1f8c0000  addli r24, r1, 0
000f38  13618205  setlt.f r2, r4, r24
000f3c  9f000c00  addli r1, r24, 0
000f40  3b200100  bneq r2, zero, 8
000f44  9f000200  addli r1, r4, 0
000f48  1b319200  slli r2, r4, 9
000f4c  9b319c00  slli r3, r24, 9
000f50  1b427201  srli r4, r4, 23
000f54  9b427c01  srli r5, r24, 23
000f58  13010100  seteq r2, r2, zero
000f5c  93810100  seteq r3, r3, zero
000f60  1b02f20f  andi r4, r4, 255
000f64  9b82f20f  andi r5, r5, 255
000f68  1b72f20f  setlti r4, r4, 255
000f6c  9bf2f20f  setlti r5, r5, 255
000f70  17112200  or r2, r4, r2
000f74  97913200  or r3, r5, r3
000f78  17812100  and r2, r3, r2
000f7c  b708010c  beq r2, zero, 6688
000f80  bb180c0c  bneq r24, zero, 6692
000f84  e302dffd  loadli.w r5,  -280(r30)
000f88  37a00200  beq r5, zero, 8
000f8c  9f020c00  addli r5, r24, 0
000f90  13611006  setle.f r2, zero, r1
000f94  93e10006  setle.f r3, r1, zero
000f98  634c8ffc  loadli.w r24,  -444(r30)
000f9c  17812100  and r2, r3, r2
000fa0  3b200100  bneq r2, zero, 8
000fa4  9f820000  addli r5, r1, 0
000fa8  13615e04  setlt.f r2, r28, r5
000fac  e3469ffc  loadli.w r13,  -436(r30)
000fb0  9f800200  addli r1, r5, 0
000fb4  3b200100  bneq r2, zero, 8
000fb8  9f000e00  addli r1, r28, 0
000fbc  1b319e00  slli r2, r28, 9
000fc0  9bb19200  slli r3, r5, 9
000fc4  1b427e01  srli r4, r28, 23
000fc8  1f830200  addli r6, r5, 0
000fcc  9bc27201  srli r5, r5, 23
000fd0  13010100  seteq r2, r2, zero
000fd4  93810100  seteq r3, r3, zero
000fd8  1b02f20f  andi r4, r4, 255
000fdc  9b82f20f  andi r5, r5, 255
000fe0  1b72f20f  setlti r4, r4, 255
000fe4  9bf2f20f  setlti r5, r5, 255
000fe8  17112200  or r2, r4, r2
000fec  97913200  or r3, r5, r3
000ff0  17812100  and r2, r3, r2
000ff4  3707010c  beq r2, zero, 6592
000ff8  6342dffd  loadli.w r4,  -276(r30)
000ffc  3b17030c  bneq r6, zero, 6596
001000  37200e00  beq r28, zero, 8
001004  1f0e0300  addli r28, r6, 0
001008  13611006  setle.f r2, zero, r1
00100c  93e10006  setle.f r3, r1, zero
001010  17812100  and r2, r3, r2
001014  3b200100  bneq r2, zero, 8
001018  1f8e0000  addli r28, r1, 0
00101c  1361c205  setlt.f r2, r4, r28
001020  9f000e00  addli r1, r28, 0
001024  1f830600  addli r6, r13, 0
001028  3b200100  bneq r2, zero, 8
00102c  9f000200  addli r1, r4, 0
001030  1b319200  slli r2, r4, 9
001034  9b319e00  slli r3, r28, 9
001038  1b427201  srli r4, r4, 23
00103c  9b427e01  srli r5, r28, 23
001040  9f060c00  addli r13, r24, 0
001044  13010100  seteq r2, r2, zero
001048  93810100  seteq r3, r3, zero
00104c  1b02f20f  andi r4, r4, 255
001050  9b82f20f  andi r5, r5, 255
001054  1b72f20f  setlti r4, r4, 255
001058  9bf2f20f  setlti r5, r5, 255
00105c  17112200  or r2, r4, r2
001060  97913200  or r3, r5, r3
001064  17812100  and r2, r3, r2
001068  b715010c  beq r2, zero, 6500
00106c  bb250e0c  bneq r28, zero, 6504
001070  e342dffd  loadli.w r5,  -276(r30)
001074  37a00200  beq r5, zero, 8
001078  9f020e00  addli r5, r28, 0
00107c  13611006  setle.f r2, zero, r1
001080  93e10006  setle.f r3, r1, zero
001084  17812100  and r2, r3, r2
001088  3b200100  bneq r2, zero, 8
00108c  9f820000  addli r5, r1, 0
001090  13615804  setlt.f r2, r16, r5
001094  9f800200  addli r1, r5, 0
001098  3b200100  bneq r2, zero, 8
00109c  9f000800  addli r1, r16, 0
0010a0  1b319800  slli r2, r16, 9
0010a4  9bb19200  slli r3, r5, 9
0010a8  1b427801  srli r4, r16, 23
0010ac  1f8e0200  addli r28, r5, 0
0010b0  9bc27201  srli r5, r5, 23
0010b4  13010100  seteq r2, r2, zero
0010b8  93810100  seteq r3, r3, zero
0010bc  1b02f20f  andi r4, r4, 255
0010c0  9b82f20f  andi r5, r5, 255
0010c4  1b72f20f  setlti r4, r4, 255
0010c8  9bf2f20f  setlti r5, r5, 255
0010cc  17112200  or r2, r4, r2
0010d0  97913200  or r3, r5, r3
0010d4  17812100  and r2, r3, r2
0010d8  3734010c  beq r2, zero, 6412
0010dc  6302effd  loadli.w r4,  -272(r30)
0010e0  3b440e0c  bneq r28, zero, 6416
0010e4  37200800  beq r16, zero, 8
0010e8  1f080e00  addli r16, r28, 0
0010ec  13611006  setle.f r2, zero, r1
0010f0  93e10006  setle.f r3, r1, zero
0010f4  17812100  and r2, r3, r2
0010f8  3b200100  bneq r2, zero, 8
0010fc  1f880000  addli r16, r1, 0
001100  13610205  setlt.f r2, r4, r16
001104  9f000800  addli r1, r16, 0
001108  3b200100  bneq r2, zero, 8
00110c  9f000200  addli r1, r4, 0
001110  1b319200  slli r2, r4, 9
001114  9b319800  slli r3, r16, 9
001118  1b427201  srli r4, r4, 23
00111c  9b427801  srli r5, r16, 23
001120  13010100  seteq r2, r2, zero
001124  93810100  seteq r3, r3, zero
001128  1b02f20f  andi r4, r4, 255
00112c  9b82f20f  andi r5, r5, 255
001130  1b72f20f  setlti r4, r4, 255
001134  9bf2f20f  setlti r5, r5, 255
001138  17112200  or r2, r4, r2
00113c  97913200  or r3, r5, r3
001140  17812100  and r2, r3, r2
001144  b762010c  beq r2, zero, 6328
001148  bb72080c  bneq r16, zero, 6332
00114c  e302effd  loadli.w r5,  -272(r30)
001150  37a00200  beq r5, zero, 8
001154  9f020800  addli r5, r16, 0
001158  13611006  setle.f r2, zero, r1
00115c  93e10006  setle.f r3, r1, zero
001160  17812100  and r2, r3, r2
001164  3b200100  bneq r2, zero, 8
001168  9f820000  addli r5, r1, 0
00116c  13e15b04  setlt.f r2, r23, r5
001170  6308affc  loadli.w r16,  -432(r30)
001174  9f800200  addli r1, r5, 0
001178  3b200100  bneq r2, zero, 8
00117c  9f800b00  addli r1, r23, 0
001180  1bb19b00  slli r2, r23, 9
001184  9bb19200  slli r3, r5, 9
001188  1bc27b01  srli r4, r23, 23
00118c  1f8e0200  addli r28, r5, 0
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
0011b8  3771010c  beq r2, zero, 6236
0011bc  6342effd  loadli.w r4,  -268(r30)
0011c0  bb010e0c  bneq r28, zero, 6240
0011c4  37a00b00  beq r23, zero, 8
0011c8  9f0b0e00  addli r23, r28, 0
0011cc  13611006  setle.f r2, zero, r1
0011d0  93e10006  setle.f r3, r1, zero
0011d4  17812100  and r2, r3, r2
0011d8  3b200100  bneq r2, zero, 8
0011dc  9f8b0000  addli r23, r1, 0
0011e0  13617205  setlt.f r2, r4, r23
0011e4  9f800b00  addli r1, r23, 0
0011e8  1f0e0800  addli r28, r16, 0
0011ec  3b200100  bneq r2, zero, 8
0011f0  9f000200  addli r1, r4, 0
0011f4  1b319200  slli r2, r4, 9
0011f8  9bb19b00  slli r3, r23, 9
0011fc  1b427201  srli r4, r4, 23
001200  9bc27b01  srli r5, r23, 23
001204  13010100  seteq r2, r2, zero
001208  93810100  seteq r3, r3, zero
00120c  1b02f20f  andi r4, r4, 255
001210  9b82f20f  andi r5, r5, 255
001214  1b72f20f  setlti r4, r4, 255
001218  9bf2f20f  setlti r5, r5, 255
00121c  17112200  or r2, r4, r2
001220  97913200  or r3, r5, r3
001224  17812100  and r2, r3, r2
001228  3710010c  beq r2, zero, 6148
00122c  3ba00b0c  bneq r23, zero, 6152
001230  e342effd  loadli.w r5,  -268(r30)
001234  37a00200  beq r5, zero, 8
001238  9f820b00  addli r5, r23, 0
00123c  13611006  setle.f r2, zero, r1
001240  93e10006  setle.f r3, r1, zero
001244  17812100  and r2, r3, r2
001248  3b200100  bneq r2, zero, 8
00124c  9f820000  addli r5, r1, 0
001250  13e15a04  setlt.f r2, r21, r5
001254  9f800200  addli r1, r5, 0
001258  3b200100  bneq r2, zero, 8
00125c  9f800a00  addli r1, r21, 0
001260  1bb19a00  slli r2, r21, 9
001264  9bb19200  slli r3, r5, 9
001268  1bc27a01  srli r4, r21, 23
00126c  9f8b0200  addli r23, r5, 0
001270  9bc27201  srli r5, r5, 23
001274  13010100  seteq r2, r2, zero
001278  93810100  seteq r3, r3, zero
00127c  1b02f20f  andi r4, r4, 255
001280  9b82f20f  andi r5, r5, 255
001284  1b72f20f  setlti r4, r4, 255
001288  9bf2f20f  setlti r5, r5, 255
00128c  17112200  or r2, r4, r2
001290  97913200  or r3, r5, r3
001294  17812100  and r2, r3, r2
001298  b73e010a  beq r2, zero, 6060
00129c  6302fffd  loadli.w r4,  -264(r30)
0012a0  bbce0b0a  bneq r23, zero, 6064
0012a4  37a00a00  beq r21, zero, 8
0012a8  9f8a0b00  addli r21, r23, 0
0012ac  13611006  setle.f r2, zero, r1
0012b0  93e10006  setle.f r3, r1, zero
0012b4  17812100  and r2, r3, r2
0012b8  3b200100  bneq r2, zero, 8
0012bc  9f8a0000  addli r21, r1, 0
0012c0  13615205  setlt.f r2, r4, r21
0012c4  9f800a00  addli r1, r21, 0
0012c8  3b200100  bneq r2, zero, 8
0012cc  9f000200  addli r1, r4, 0
0012d0  1b319200  slli r2, r4, 9
0012d4  9bb19a00  slli r3, r21, 9
0012d8  1b427201  srli r4, r4, 23
0012dc  9bc27a01  srli r5, r21, 23
0012e0  13010100  seteq r2, r2, zero
0012e4  93810100  seteq r3, r3, zero
0012e8  1b02f20f  andi r4, r4, 255
0012ec  9b82f20f  andi r5, r5, 255
0012f0  1b72f20f  setlti r4, r4, 255
0012f4  9bf2f20f  setlti r5, r5, 255
0012f8  17112200  or r2, r4, r2
0012fc  97913200  or r3, r5, r3
001300  17812100  and r2, r3, r2
001304  376d010a  beq r2, zero, 5976
001308  3bfd0a0a  bneq r21, zero, 5980
00130c  e302fffd  loadli.w r5,  -264(r30)
001310  37a00200  beq r5, zero, 8
001314  9f820a00  addli r5, r21, 0
001318  13611006  setle.f r2, zero, r1
00131c  93e10006  setle.f r3, r1, zero
001320  17812100  and r2, r3, r2
001324  3b200100  bneq r2, zero, 8
001328  9f820000  addli r5, r1, 0
00132c  13615b04  setlt.f r2, r22, r5
001330  9f800200  addli r1, r5, 0
001334  3b200100  bneq r2, zero, 8
001338  9f000b00  addli r1, r22, 0
00133c  1b319b00  slli r2, r22, 9
001340  9bb19200  slli r3, r5, 9
001344  1b427b01  srli r4, r22, 23
001348  9f8a0200  addli r21, r5, 0
00134c  9bc27201  srli r5, r5, 23
001350  13010100  seteq r2, r2, zero
001354  93810100  seteq r3, r3, zero
001358  1b02f20f  andi r4, r4, 255
00135c  9b82f20f  andi r5, r5, 255
001360  1b72f20f  setlti r4, r4, 255
001364  9bf2f20f  setlti r5, r5, 255
001368  17112200  or r2, r4, r2
00136c  97913200  or r3, r5, r3
001370  17812100  and r2, r3, r2
001374  370c010a  beq r2, zero, 5888
001378  6342fffd  loadli.w r4,  -260(r30)
00137c  3b9c0a0a  bneq r21, zero, 5892
001380  37200b00  beq r22, zero, 8
001384  1f8b0a00  addli r22, r21, 0
001388  13611006  setle.f r2, zero, r1
00138c  93e10006  setle.f r3, r1, zero
001390  17812100  and r2, r3, r2
001394  3b200100  bneq r2, zero, 8
001398  1f8b0000  addli r22, r1, 0
00139c  13616205  setlt.f r2, r4, r22
0013a0  9f000b00  addli r1, r22, 0
0013a4  3b200100  bneq r2, zero, 8
0013a8  9f000200  addli r1, r4, 0
0013ac  1b319200  slli r2, r4, 9
0013b0  9b319b00  slli r3, r22, 9
0013b4  1b427201  srli r4, r4, 23
0013b8  9b427b01  srli r5, r22, 23
0013bc  13010100  seteq r2, r2, zero
0013c0  93810100  seteq r3, r3, zero
0013c4  1b02f20f  andi r4, r4, 255
0013c8  9b82f20f  andi r5, r5, 255
0013cc  1b72f20f  setlti r4, r4, 255
0013d0  9bf2f20f  setlti r5, r5, 255
0013d4  17112200  or r2, r4, r2
0013d8  97913200  or r3, r5, r3
0013dc  17812100  and r2, r3, r2
0013e0  b73a010a  beq r2, zero, 5804
0013e4  bb4a0b0a  bneq r22, zero, 5808
0013e8  e342fffd  loadli.w r5,  -260(r30)
0013ec  37a00200  beq r5, zero, 8
0013f0  9f020b00  addli r5, r22, 0
0013f4  13611006  setle.f r2, zero, r1
0013f8  93e10006  setle.f r3, r1, zero
0013fc  630bbffc  loadli.w r22,  -424(r30)
001400  17812100  and r2, r3, r2
001404  3b200100  bneq r2, zero, 8
001408  9f820000  addli r5, r1, 0
00140c  13e15304  setlt.f r2, r7, r5
001410  e30b9ffc  loadli.w r23,  -440(r30)
001414  9f800200  addli r1, r5, 0
001418  3b200100  bneq r2, zero, 8
00141c  9f800300  addli r1, r7, 0
001420  1bb19300  slli r2, r7, 9
001424  9bb19200  slli r3, r5, 9
001428  1bc27301  srli r4, r7, 23
00142c  9f8a0200  addli r21, r5, 0
001430  9bc27201  srli r5, r5, 23
001434  13010100  seteq r2, r2, zero
001438  93810100  seteq r3, r3, zero
00143c  1b02f20f  andi r4, r4, 255
001440  9b82f20f  andi r5, r5, 255
001444  1b72f20f  setlti r4, r4, 255
001448  9bf2f20f  setlti r5, r5, 255
00144c  17112200  or r2, r4, r2
001450  97913200  or r3, r5, r3
001454  17812100  and r2, r3, r2
001458  3739010a  beq r2, zero, 5708
00145c  63020ffe  loadli.w r4,  -256(r30)
001460  3bc90a0a  bneq r21, zero, 5712
001464  37a00300  beq r7, zero, 8
001468  9f830a00  addli r7, r21, 0
00146c  13611006  setle.f r2, zero, r1
001470  93e10006  setle.f r3, r1, zero
001474  17812100  and r2, r3, r2
001478  3b200100  bneq r2, zero, 8
00147c  9f830000  addli r7, r1, 0
001480  13617204  setlt.f r2, r4, r7
001484  9f800300  addli r1, r7, 0
001488  9f8a0b00  addli r21, r23, 0
00148c  3b200100  bneq r2, zero, 8
001490  9f000200  addli r1, r4, 0
001494  1b319200  slli r2, r4, 9
001498  9bb19300  slli r3, r7, 9
00149c  1b427201  srli r4, r4, 23
0014a0  9bc27301  srli r5, r7, 23
0014a4  9f0b0b00  addli r23, r22, 0
0014a8  13010100  seteq r2, r2, zero
0014ac  93810100  seteq r3, r3, zero
0014b0  1b02f20f  andi r4, r4, 255
0014b4  9b82f20f  andi r5, r5, 255
0014b8  1b72f20f  setlti r4, r4, 255
0014bc  9bf2f20f  setlti r5, r5, 255
0014c0  17112200  or r2, r4, r2
0014c4  97913200  or r3, r5, r3
0014c8  17812100  and r2, r3, r2
0014cc  b747010a  beq r2, zero, 5616
0014d0  bbd7030a  bneq r7, zero, 5620
0014d4  e3020ffe  loadli.w r5,  -256(r30)
0014d8  37a00200  beq r5, zero, 8
0014dc  9f820300  addli r5, r7, 0
0014e0  13611006  setle.f r2, zero, r1
0014e4  93e10006  setle.f r3, r1, zero
0014e8  17812100  and r2, r3, r2
0014ec  3b200100  bneq r2, zero, 8
0014f0  9f820000  addli r5, r1, 0
0014f4  13615604  setlt.f r2, r12, r5
0014f8  9f800200  addli r1, r5, 0
0014fc  3b200100  bneq r2, zero, 8
001500  9f000600  addli r1, r12, 0
001504  1b319600  slli r2, r12, 9
001508  9bb19200  slli r3, r5, 9
00150c  1b427601  srli r4, r12, 23
001510  9f830200  addli r7, r5, 0
001514  9bc27201  srli r5, r5, 23
001518  13010100  seteq r2, r2, zero
00151c  93810100  seteq r3, r3, zero
001520  1b02f20f  andi r4, r4, 255
001524  9b82f20f  andi r5, r5, 255
001528  1b72f20f  setlti r4, r4, 255
00152c  9bf2f20f  setlti r5, r5, 255
001530  17112200  or r2, r4, r2
001534  97913200  or r3, r5, r3
001538  17812100  and r2, r3, r2
00153c  3766010a  beq r2, zero, 5528
001540  63420ffe  loadli.w r4,  -252(r30)
001544  3bf6030a  bneq r7, zero, 5532
001548  37200600  beq r12, zero, 8
00154c  1f860300  addli r12, r7, 0
001550  13611006  setle.f r2, zero, r1
001554  93e10006  setle.f r3, r1, zero
001558  17812100  and r2, r3, r2
00155c  3b200100  bneq r2, zero, 8
001560  1f860000  addli r12, r1, 0
001564  1361c204  setlt.f r2, r4, r12
001568  e3037ffc  loadli.w r7,  -456(r30)
00156c  9f000600  addli r1, r12, 0
001570  3b200100  bneq r2, zero, 8
001574  9f000200  addli r1, r4, 0
001578  1b319200  slli r2, r4, 9
00157c  9b319600  slli r3, r12, 9
001580  1b427201  srli r4, r4, 23
001584  9b427601  srli r5, r12, 23
001588  13010100  seteq r2, r2, zero
00158c  93810100  seteq r3, r3, zero
001590  1b02f20f  andi r4, r4, 255
001594  9b82f20f  andi r5, r5, 255
001598  1b72f20f  setlti r4, r4, 255
00159c  9bf2f20f  setlti r5, r5, 255
0015a0  17112200  or r2, r4, r2
0015a4  97913200  or r3, r5, r3
0015a8  17812100  and r2, r3, r2
0015ac  3705010a  beq r2, zero, 5440
0015b0  3b15060a  bneq r12, zero, 5444
0015b4  e3420ffe  loadli.w r5,  -252(r30)
0015b8  37a00200  beq r5, zero, 8
0015bc  9f020600  addli r5, r12, 0
0015c0  13611006  setle.f r2, zero, r1
0015c4  93e10006  setle.f r3, r1, zero
0015c8  17812100  and r2, r3, r2
0015cc  3b200100  bneq r2, zero, 8
0015d0  9f820000  addli r5, r1, 0
0015d4  13615404  setlt.f r2, r8, r5
0015d8  9f800200  addli r1, r5, 0
0015dc  3b200100  bneq r2, zero, 8
0015e0  9f000400  addli r1, r8, 0
0015e4  1b319400  slli r2, r8, 9
0015e8  9bb19200  slli r3, r5, 9
0015ec  1b427401  srli r4, r8, 23
0015f0  1f860200  addli r12, r5, 0
0015f4  9bc27201  srli r5, r5, 23
0015f8  13010100  seteq r2, r2, zero
0015fc  93810100  seteq r3, r3, zero
001600  1b02f20f  andi r4, r4, 255
001604  9b82f20f  andi r5, r5, 255
001608  1b72f20f  setlti r4, r4, 255
00160c  9bf2f20f  setlti r5, r5, 255
001610  17112200  or r2, r4, r2
001614  97913200  or r3, r5, r3
001618  17812100  and r2, r3, r2
00161c  b723010a  beq r2, zero, 5352
001620  63021ffe  loadli.w r4,  -248(r30)
001624  bb33060a  bneq r12, zero, 5356
001628  37200400  beq r8, zero, 8
00162c  1f040600  addli r8, r12, 0
001630  13611006  setle.f r2, zero, r1
001634  93e10006  setle.f r3, r1, zero
001638  17812100  and r2, r3, r2
00163c  3b200100  bneq r2, zero, 8
001640  1f840000  addli r8, r1, 0
001644  13618204  setlt.f r2, r4, r8
001648  9f000400  addli r1, r8, 0
00164c  3b200100  bneq r2, zero, 8
001650  9f000200  addli r1, r4, 0
001654  1b319200  slli r2, r4, 9
001658  9b319400  slli r3, r8, 9
00165c  1b427201  srli r4, r4, 23
001660  9b427401  srli r5, r8, 23
001664  13010100  seteq r2, r2, zero
001668  93810100  seteq r3, r3, zero
00166c  1b02f20f  andi r4, r4, 255
001670  9b82f20f  andi r5, r5, 255
001674  1b72f20f  setlti r4, r4, 255
001678  9bf2f20f  setlti r5, r5, 255
00167c  17112200  or r2, r4, r2
001680  97913200  or r3, r5, r3
001684  17812100  and r2, r3, r2
001688  3752010a  beq r2, zero, 5268
00168c  3b62040a  bneq r8, zero, 5272
001690  e3021ffe  loadli.w r5,  -248(r30)
001694  37a00200  beq r5, zero, 8
001698  9f020400  addli r5, r8, 0
00169c  13611006  setle.f r2, zero, r1
0016a0  93e10006  setle.f r3, r1, zero
0016a4  17812100  and r2, r3, r2
0016a8  3b200100  bneq r2, zero, 8
0016ac  9f820000  addli r5, r1, 0
0016b0  13e15404  setlt.f r2, r9, r5
0016b4  9f800200  addli r1, r5, 0
0016b8  3b200100  bneq r2, zero, 8
0016bc  9f800400  addli r1, r9, 0
0016c0  1bb19400  slli r2, r9, 9
0016c4  9bb19200  slli r3, r5, 9
0016c8  1bc27401  srli r4, r9, 23
0016cc  1f840200  addli r8, r5, 0
0016d0  9bc27201  srli r5, r5, 23
0016d4  13010100  seteq r2, r2, zero
0016d8  93810100  seteq r3, r3, zero
0016dc  1b02f20f  andi r4, r4, 255
0016e0  9b82f20f  andi r5, r5, 255
0016e4  1b72f20f  setlti r4, r4, 255
0016e8  9bf2f20f  setlti r5, r5, 255
0016ec  17112200  or r2, r4, r2
0016f0  97913200  or r3, r5, r3
0016f4  17812100  and r2, r3, r2
0016f8  b770010a  beq r2, zero, 5180
0016fc  63421ffe  loadli.w r4,  -244(r30)
001700  3b01040a  bneq r8, zero, 5184
001704  37a00400  beq r9, zero, 8
001708  9f040400  addli r9, r8, 0
00170c  13611006  setle.f r2, zero, r1
001710  93e10006  setle.f r3, r1, zero
001714  17812100  and r2, r3, r2
001718  3b200100  bneq r2, zero, 8
00171c  9f840000  addli r9, r1, 0
001720  13619204  setlt.f r2, r4, r9
001724  63048ffc  loadli.w r8,  -448(r30)
001728  9f800400  addli r1, r9, 0
00172c  3b200100  bneq r2, zero, 8
001730  9f000200  addli r1, r4, 0
001734  1b319200  slli r2, r4, 9
001738  9bb19400  slli r3, r9, 9
00173c  1b427201  srli r4, r4, 23
001740  9bc27401  srli r5, r9, 23
001744  13010100  seteq r2, r2, zero
001748  93810100  seteq r3, r3, zero
00174c  1b02f20f  andi r4, r4, 255
001750  9b82f20f  andi r5, r5, 255
001754  1b72f20f  setlti r4, r4, 255
001758  9bf2f20f  setlti r5, r5, 255
00175c  17112200  or r2, r4, r2
001760  97913200  or r3, r5, r3
001764  17812100  and r2, r3, r2
001768  b71f0108  beq r2, zero, 5092
00176c  bbaf0408  bneq r9, zero, 5096
001770  e3421ffe  loadli.w r5,  -244(r30)
001774  37a00200  beq r5, zero, 8
001778  9f820400  addli r5, r9, 0
00177c  13611006  setle.f r2, zero, r1
001780  93e10006  setle.f r3, r1, zero
001784  17812100  and r2, r3, r2
001788  3b200100  bneq r2, zero, 8
00178c  9f820000  addli r5, r1, 0
001790  13615504  setlt.f r2, r10, r5
001794  9f800200  addli r1, r5, 0
001798  3b200100  bneq r2, zero, 8
00179c  9f000500  addli r1, r10, 0
0017a0  1b319500  slli r2, r10, 9
0017a4  9bb19200  slli r3, r5, 9
0017a8  1b427501  srli r4, r10, 23
0017ac  9f840200  addli r9, r5, 0
0017b0  9bc27201  srli r5, r5, 23
0017b4  13010100  seteq r2, r2, zero
0017b8  93810100  seteq r3, r3, zero
0017bc  1b02f20f  andi r4, r4, 255
0017c0  9b82f20f  andi r5, r5, 255
0017c4  1b72f20f  setlti r4, r4, 255
0017c8  9bf2f20f  setlti r5, r5, 255
0017cc  17112200  or r2, r4, r2
0017d0  97913200  or r3, r5, r3
0017d4  17812100  and r2, r3, r2
0017d8  373e0108  beq r2, zero, 5004
0017dc  63022ffe  loadli.w r4,  -240(r30)
0017e0  3bce0408  bneq r9, zero, 5008
0017e4  37200500  beq r10, zero, 8
0017e8  1f850400  addli r10, r9, 0
0017ec  13611006  setle.f r2, zero, r1
0017f0  93e10006  setle.f r3, r1, zero
0017f4  17812100  and r2, r3, r2
0017f8  3b200100  bneq r2, zero, 8
0017fc  1f850000  addli r10, r1, 0
001800  1361a204  setlt.f r2, r4, r10
001804  e3446ffc  loadli.w r9,  -460(r30)
001808  9f000500  addli r1, r10, 0
00180c  3b200100  bneq r2, zero, 8
001810  9f000200  addli r1, r4, 0
001814  1b319200  slli r2, r4, 9
001818  9b319500  slli r3, r10, 9
00181c  1b427201  srli r4, r4, 23
001820  9b427501  srli r5, r10, 23
001824  13010100  seteq r2, r2, zero
001828  93810100  seteq r3, r3, zero
00182c  1b02f20f  andi r4, r4, 255
001830  9b82f20f  andi r5, r5, 255
001834  1b72f20f  setlti r4, r4, 255
001838  9bf2f20f  setlti r5, r5, 255
00183c  17112200  or r2, r4, r2
001840  97913200  or r3, r5, r3
001844  17812100  and r2, r3, r2
001848  b75c0108  beq r2, zero, 4916
00184c  bb6c0508  bneq r10, zero, 4920
001850  e3022ffe  loadli.w r5,  -240(r30)
001854  37a00200  beq r5, zero, 8
001858  9f020500  addli r5, r10, 0
00185c  13611006  setle.f r2, zero, r1
001860  93e10006  setle.f r3, r1, zero
001864  17812100  and r2, r3, r2
001868  3b200100  bneq r2, zero, 8
00186c  9f820000  addli r5, r1, 0
001870  13e15404  setlt.f r2, r9, r5
001874  9f800200  addli r1, r5, 0
001878  3b200100  bneq r2, zero, 8
00187c  9f800400  addli r1, r9, 0
001880  1bb19400  slli r2, r9, 9
001884  9bb19200  slli r3, r5, 9
001888  1bc27401  srli r4, r9, 23
00188c  1f850200  addli r10, r5, 0
001890  9bc27201  srli r5, r5, 23
001894  13010100  seteq r2, r2, zero
001898  93810100  seteq r3, r3, zero
00189c  1b02f20f  andi r4, r4, 255
0018a0  9b82f20f  andi r5, r5, 255
0018a4  1b72f20f  setlti r4, r4, 255
0018a8  9bf2f20f  setlti r5, r5, 255
0018ac  17112200  or r2, r4, r2
0018b0  97913200  or r3, r5, r3
0018b4  17812100  and r2, r3, r2
0018b8  377b0108  beq r2, zero, 4828
0018bc  63422ffe  loadli.w r4,  -236(r30)
0018c0  bb0b0508  bneq r10, zero, 4832
0018c4  37a00400  beq r9, zero, 8
0018c8  9f040500  addli r9, r10, 0
0018cc  13611006  setle.f r2, zero, r1
0018d0  93e10006  setle.f r3, r1, zero
0018d4  17812100  and r2, r3, r2
0018d8  3b200100  bneq r2, zero, 8
0018dc  9f840000  addli r9, r1, 0
0018e0  13619204  setlt.f r2, r4, r9
0018e4  9f800400  addli r1, r9, 0
0018e8  3b200100  bneq r2, zero, 8
0018ec  9f000200  addli r1, r4, 0
0018f0  1b319200  slli r2, r4, 9
0018f4  9bb19400  slli r3, r9, 9
0018f8  1b427201  srli r4, r4, 23
0018fc  9bc27401  srli r5, r9, 23
001900  13010100  seteq r2, r2, zero
001904  93810100  seteq r3, r3, zero
001908  1b02f20f  andi r4, r4, 255
00190c  9b82f20f  andi r5, r5, 255
001910  1b72f20f  setlti r4, r4, 255
001914  9bf2f20f  setlti r5, r5, 255
001918  17112200  or r2, r4, r2
00191c  97913200  or r3, r5, r3
001920  17812100  and r2, r3, r2
001924  372a0108  beq r2, zero, 4744
001928  3bba0408  bneq r9, zero, 4748
00192c  e3422ffe  loadli.w r5,  -236(r30)
001930  37a00200  beq r5, zero, 8
001934  9f820400  addli r5, r9, 0
001938  13611006  setle.f r2, zero, r1
00193c  93e10006  setle.f r3, r1, zero
001940  17812100  and r2, r3, r2
001944  3b200100  bneq r2, zero, 8
001948  9f820000  addli r5, r1, 0
00194c  13e15304  setlt.f r2, r7, r5
001950  9f800200  addli r1, r5, 0
001954  3b200100  bneq r2, zero, 8
001958  9f800300  addli r1, r7, 0
00195c  1bb19300  slli r2, r7, 9
001960  9bb19200  slli r3, r5, 9
001964  1bc27301  srli r4, r7, 23
001968  1f8c0200  addli r24, r5, 0
00196c  9bc27201  srli r5, r5, 23
001970  13010100  seteq r2, r2, zero
001974  93810100  seteq r3, r3, zero
001978  1b02f20f  andi r4, r4, 255
00197c  9b82f20f  andi r5, r5, 255
001980  1b72f20f  setlti r4, r4, 255
001984  9bf2f20f  setlti r5, r5, 255
001988  17112200  or r2, r4, r2
00198c  97913200  or r3, r5, r3
001990  17812100  and r2, r3, r2
001994  b7480108  beq r2, zero, 4656
001998  bb580c08  bneq r24, zero, 4660
00199c  37a00300  beq r7, zero, 8
0019a0  9f030c00  addli r7, r24, 0
0019a4  13611006  setle.f r2, zero, r1
0019a8  93e10006  setle.f r3, r1, zero
0019ac  17812100  and r2, r3, r2
0019b0  3b200100  bneq r2, zero, 8
0019b4  9f830000  addli r7, r1, 0
0019b8  13617404  setlt.f r2, r8, r7
0019bc  9f800300  addli r1, r7, 0
0019c0  3b200100  bneq r2, zero, 8
0019c4  9f000400  addli r1, r8, 0
0019c8  1b319400  slli r2, r8, 9
0019cc  9bb19300  slli r3, r7, 9
0019d0  1b427401  srli r4, r8, 23
0019d4  9bc27301  srli r5, r7, 23
0019d8  13010100  seteq r2, r2, zero
0019dc  93810100  seteq r3, r3, zero
0019e0  1b02f20f  andi r4, r4, 255
0019e4  9b82f20f  andi r5, r5, 255
0019e8  1b72f20f  setlti r4, r4, 255
0019ec  9bf2f20f  setlti r5, r5, 255
0019f0  17112200  or r2, r4, r2
0019f4  97913200  or r3, r5, r3
0019f8  17812100  and r2, r3, r2
0019fc  37770108  beq r2, zero, 4572
001a00  63423ffe  loadli.w r4,  -228(r30)
001a04  bb870308  bneq r7, zero, 4576
001a08  37200400  beq r8, zero, 8
001a0c  1f840300  addli r8, r7, 0
001a10  13611006  setle.f r2, zero, r1
001a14  93e10006  setle.f r3, r1, zero
001a18  17812100  and r2, r3, r2
001a1c  3b200100  bneq r2, zero, 8
001a20  1f840000  addli r8, r1, 0
001a24  13618204  setlt.f r2, r4, r8
001a28  9f000400  addli r1, r8, 0
001a2c  3b200100  bneq r2, zero, 8
001a30  9f000200  addli r1, r4, 0
001a34  1b319200  slli r2, r4, 9
001a38  9b319400  slli r3, r8, 9
001a3c  1b427201  srli r4, r4, 23
001a40  9b427401  srli r5, r8, 23
001a44  13010100  seteq r2, r2, zero
001a48  93810100  seteq r3, r3, zero
001a4c  1b02f20f  andi r4, r4, 255
001a50  9b82f20f  andi r5, r5, 255
001a54  1b72f20f  setlti r4, r4, 255
001a58  9bf2f20f  setlti r5, r5, 255
001a5c  17112200  or r2, r4, r2
001a60  97913200  or r3, r5, r3
001a64  17812100  and r2, r3, r2
001a68  37260108  beq r2, zero, 4488
001a6c  63024ffe  loadli.w r4,  -224(r30)
001a70  3b360408  bneq r8, zero, 4492
001a74  e3423ffe  loadli.w r5,  -228(r30)
001a78  37a00200  beq r5, zero, 8
001a7c  9f020400  addli r5, r8, 0
001a80  13611006  setle.f r2, zero, r1
001a84  93e10006  setle.f r3, r1, zero
001a88  6348bffc  loadli.w r16,  -420(r30)
001a8c  17812100  and r2, r3, r2
001a90  3b200100  bneq r2, zero, 8
001a94  9f820000  addli r5, r1, 0
001a98  13615204  setlt.f r2, r4, r5
001a9c  6346affc  loadli.w r12,  -428(r30)
001aa0  9f800200  addli r1, r5, 0
001aa4  3b200100  bneq r2, zero, 8
001aa8  9f000200  addli r1, r4, 0
001aac  1b319200  slli r2, r4, 9
001ab0  9bb19200  slli r3, r5, 9
001ab4  1b427201  srli r4, r4, 23
001ab8  1f8b0200  addli r22, r5, 0
001abc  9bc27201  srli r5, r5, 23
001ac0  634cdffc  loadli.w r24,  -404(r30)
001ac4  13010100  seteq r2, r2, zero
001ac8  93810100  seteq r3, r3, zero
001acc  1b02f20f  andi r4, r4, 255
001ad0  9b82f20f  andi r5, r5, 255
001ad4  1b72f20f  setlti r4, r4, 255
001ad8  9bf2f20f  setlti r5, r5, 255
001adc  17112200  or r2, r4, r2
001ae0  97913200  or r3, r5, r3
001ae4  17812100  and r2, r3, r2
001ae8  3b200100  bneq r2, zero, 8
001aec  ab00c07f  lui r1, 523264
001af0  e303cffc  loadli.w r7,  -416(r30)
001af4  37200b00  beq r22, zero, 8
001af8  1f8b0000  addli r22, r1, 0
001afc  6345cffc  loadli.w r10,  -412(r30)
001b00  e3024ffe  loadli.w r5,  -224(r30)
001b04  37a00200  beq r5, zero, 8
001b08  9f020b00  addli r5, r22, 0
001b0c  13611006  setle.f r2, zero, r1
001b10  93e10006  setle.f r3, r1, zero
001b14  e304dffc  loadli.w r9,  -408(r30)
001b18  17812100  and r2, r3, r2
001b1c  3b200100  bneq r2, zero, 8
001b20  9f820000  addli r5, r1, 0
001b24  13e15604  setlt.f r2, r13, r5
001b28  63447ffc  loadli.w r8,  -452(r30)
001b2c  9f800200  addli r1, r5, 0
001b30  3b200100  bneq r2, zero, 8
001b34  9f800600  addli r1, r13, 0
001b38  1bb19600  slli r2, r13, 9
001b3c  9bb19200  slli r3, r5, 9
001b40  1bc27601  srli r4, r13, 23
001b44  1f8b0200  addli r22, r5, 0
001b48  9bc27201  srli r5, r5, 23
001b4c  13010100  seteq r2, r2, zero
001b50  93810100  seteq r3, r3, zero
001b54  1b02f20f  andi r4, r4, 255
001b58  9b82f20f  andi r5, r5, 255
001b5c  1b72f20f  setlti r4, r4, 255
001b60  9bf2f20f  setlti r5, r5, 255
001b64  17112200  or r2, r4, r2
001b68  97913200  or r3, r5, r3
001b6c  17812100  and r2, r3, r2
001b70  37720108  beq r2, zero, 4252
001b74  63424ffe  loadli.w r4,  -220(r30)
001b78  bb020b08  bneq r22, zero, 4256
001b7c  37a00600  beq r13, zero, 8
001b80  9f060b00  addli r13, r22, 0
001b84  13611006  setle.f r2, zero, r1
001b88  93e10006  setle.f r3, r1, zero
001b8c  17812100  and r2, r3, r2
001b90  3b200100  bneq r2, zero, 8
001b94  9f860000  addli r13, r1, 0
001b98  1361d204  setlt.f r2, r4, r13
001b9c  9f800600  addli r1, r13, 0
001ba0  1f0b0400  addli r22, r8, 0
001ba4  3b200100  bneq r2, zero, 8
001ba8  9f000200  addli r1, r4, 0
001bac  1b319200  slli r2, r4, 9
001bb0  9bb19600  slli r3, r13, 9
001bb4  1b427201  srli r4, r4, 23
001bb8  9bc27601  srli r5, r13, 23
001bbc  1f840400  addli r8, r9, 0
001bc0  13010100  seteq r2, r2, zero
001bc4  93810100  seteq r3, r3, zero
001bc8  1b02f20f  andi r4, r4, 255
001bcc  9b82f20f  andi r5, r5, 255
001bd0  1b72f20f  setlti r4, r4, 255
001bd4  9bf2f20f  setlti r5, r5, 255
001bd8  17112200  or r2, r4, r2
001bdc  97913200  or r3, r5, r3
001be0  17812100  and r2, r3, r2
001be4  3b200100  bneq r2, zero, 8
001be8  ab00c07f  lui r1, 523264
001bec  9f040500  addli r9, r10, 0
001bf0  37a00600  beq r13, zero, 8
001bf4  9f860000  addli r13, r1, 0
001bf8  e3424ffe  loadli.w r5,  -220(r30)
001bfc  1f850300  addli r10, r7, 0
001c00  37a00200  beq r5, zero, 8
001c04  9f820600  addli r5, r13, 0
001c08  13611006  setle.f r2, zero, r1
001c0c  93e10006  setle.f r3, r1, zero
001c10  9f030c00  addli r7, r24, 0
001c14  17812100  and r2, r3, r2
001c18  3b200100  bneq r2, zero, 8
001c1c  9f820000  addli r5, r1, 0
001c20  13e15a04  setlt.f r2, r21, r5
001c24  9f800200  addli r1, r5, 0
001c28  1f0c0600  addli r24, r12, 0
001c2c  3b200100  bneq r2, zero, 8
001c30  9f800a00  addli r1, r21, 0
001c34  1bb19a00  slli r2, r21, 9
001c38  9bb19200  slli r3, r5, 9
001c3c  1bc27a01  srli r4, r21, 23
001c40  9f860200  addli r13, r5, 0
001c44  9bc27201  srli r5, r5, 23
001c48  1f060800  addli r12, r16, 0
001c4c  13010100  seteq r2, r2, zero
001c50  93810100  seteq r3, r3, zero
001c54  1b02f20f  andi r4, r4, 255
001c58  9b82f20f  andi r5, r5, 255
001c5c  1b72f20f  setlti r4, r4, 255
001c60  9bf2f20f  setlti r5, r5, 255
001c64  17112200  or r2, r4, r2
001c68  97913200  or r3, r5, r3
001c6c  17812100  and r2, r3, r2
001c70  b75e0106  beq r2, zero, 4020
001c74  63025ffe  loadli.w r4,  -216(r30)
001c78  bbee0606  bneq r13, zero, 4024
001c7c  37a00a00  beq r21, zero, 8
001c80  9f8a0600  addli r21, r13, 0
001c84  13611006  setle.f r2, zero, r1
001c88  93e10006  setle.f r3, r1, zero
001c8c  17812100  and r2, r3, r2
001c90  3b200100  bneq r2, zero, 8
001c94  9f8a0000  addli r21, r1, 0
001c98  13615205  setlt.f r2, r4, r21
001c9c  9f800a00  addli r1, r21, 0
001ca0  3b200100  bneq r2, zero, 8
001ca4  9f000200  addli r1, r4, 0
001ca8  1b319200  slli r2, r4, 9
001cac  9bb19a00  slli r3, r21, 9
001cb0  1b427201  srli r4, r4, 23
001cb4  9bc27a01  srli r5, r21, 23
001cb8  13010100  seteq r2, r2, zero
001cbc  93810100  seteq r3, r3, zero
001cc0  1b02f20f  andi r4, r4, 255
001cc4  9b82f20f  andi r5, r5, 255
001cc8  1b72f20f  setlti r4, r4, 255
001ccc  9bf2f20f  setlti r5, r5, 255
001cd0  17112200  or r2, r4, r2
001cd4  97913200  or r3, r5, r3
001cd8  17812100  and r2, r3, r2
001cdc  b70d0106  beq r2, zero, 3936
001ce0  bb9d0a06  bneq r21, zero, 3940
001ce4  e3025ffe  loadli.w r5,  -216(r30)
001ce8  37a00200  beq r5, zero, 8
001cec  9f820a00  addli r5, r21, 0
001cf0  13611006  setle.f r2, zero, r1
001cf4  93e10006  setle.f r3, r1, zero
001cf8  17812100  and r2, r3, r2
001cfc  3b200100  bneq r2, zero, 8
001d00  9f820000  addli r5, r1, 0
001d04  13615304  setlt.f r2, r6, r5
001d08  e30a3ffe  loadli.w r21,  -232(r30)
001d0c  9f800200  addli r1, r5, 0
001d10  3b200100  bneq r2, zero, 8
001d14  9f000300  addli r1, r6, 0
001d18  1b319300  slli r2, r6, 9
001d1c  9bb19200  slli r3, r5, 9
001d20  1b427301  srli r4, r6, 23
001d24  1f880200  addli r16, r5, 0
001d28  9bc27201  srli r5, r5, 23
001d2c  13010100  seteq r2, r2, zero
001d30  93810100  seteq r3, r3, zero
001d34  1b02f20f  andi r4, r4, 255
001d38  9b82f20f  andi r5, r5, 255
001d3c  1b72f20f  setlti r4, r4, 255
001d40  9bf2f20f  setlti r5, r5, 255
001d44  17112200  or r2, r4, r2
001d48  97913200  or r3, r5, r3
001d4c  17812100  and r2, r3, r2
001d50  371c0106  beq r2, zero, 3844
001d54  63425ffe  loadli.w r4,  -212(r30)
001d58  3b2c0806  bneq r16, zero, 3848
001d5c  37200300  beq r6, zero, 8
001d60  1f030800  addli r6, r16, 0
001d64  13611006  setle.f r2, zero, r1
001d68  93e10006  setle.f r3, r1, zero
001d6c  17812100  and r2, r3, r2
001d70  3b200100  bneq r2, zero, 8
001d74  1f830000  addli r6, r1, 0
001d78  13616204  setlt.f r2, r4, r6
001d7c  9f000300  addli r1, r6, 0
001d80  3b200100  bneq r2, zero, 8
001d84  9f000200  addli r1, r4, 0
001d88  1b319200  slli r2, r4, 9
001d8c  9b319300  slli r3, r6, 9
001d90  1b427201  srli r4, r4, 23
001d94  9b427301  srli r5, r6, 23
001d98  13010100  seteq r2, r2, zero
001d9c  93810100  seteq r3, r3, zero
001da0  1b02f20f  andi r4, r4, 255
001da4  9b82f20f  andi r5, r5, 255
001da8  1b72f20f  setlti r4, r4, 255
001dac  9bf2f20f  setlti r5, r5, 255
001db0  17112200  or r2, r4, r2
001db4  97913200  or r3, r5, r3
001db8  17812100  and r2, r3, r2
001dbc  b74a0106  beq r2, zero, 3760
001dc0  bb5a0306  bneq r6, zero, 3764
001dc4  e3425ffe  loadli.w r5,  -212(r30)
001dc8  37a00200  beq r5, zero, 8
001dcc  9f020300  addli r5, r6, 0
001dd0  13611006  setle.f r2, zero, r1
001dd4  93e10006  setle.f r3, r1, zero
001dd8  6303fffc  loadli.w r6,  -392(r30)
001ddc  17812100  and r2, r3, r2
001de0  3b200100  bneq r2, zero, 8
001de4  9f820000  addli r5, r1, 0
001de8  13615e04  setlt.f r2, r28, r5
001dec  e346effc  loadli.w r13,  -396(r30)
001df0  9f800200  addli r1, r5, 0
001df4  3b200100  bneq r2, zero, 8
001df8  9f000e00  addli r1, r28, 0
001dfc  1b319e00  slli r2, r28, 9
001e00  9bb19200  slli r3, r5, 9
001e04  1b427e01  srli r4, r28, 23
001e08  1f880200  addli r16, r5, 0
001e0c  9bc27201  srli r5, r5, 23
001e10  13010100  seteq r2, r2, zero
001e14  93810100  seteq r3, r3, zero
001e18  1b02f20f  andi r4, r4, 255
001e1c  9b82f20f  andi r5, r5, 255
001e20  1b72f20f  setlti r4, r4, 255
001e24  9bf2f20f  setlti r5, r5, 255
001e28  17112200  or r2, r4, r2
001e2c  97913200  or r3, r5, r3
001e30  17812100  and r2, r3, r2
001e34  37490106  beq r2, zero, 3664
001e38  3b590806  bneq r16, zero, 3668
001e3c  37200e00  beq r28, zero, 8
001e40  1f0e0800  addli r28, r16, 0
001e44  13611006  setle.f r2, zero, r1
001e48  93e10006  setle.f r3, r1, zero
001e4c  17812100  and r2, r3, r2
001e50  3b200100  bneq r2, zero, 8
001e54  1f8e0000  addli r28, r1, 0
001e58  1361cc05  setlt.f r2, r24, r28
001e5c  9f000e00  addli r1, r28, 0
001e60  1f880600  addli r16, r13, 0
001e64  3b200100  bneq r2, zero, 8
001e68  9f000c00  addli r1, r24, 0
001e6c  1b319c00  slli r2, r24, 9
001e70  9b319e00  slli r3, r28, 9
001e74  1b427c01  srli r4, r24, 23
001e78  9b427e01  srli r5, r28, 23
001e7c  9f060300  addli r13, r6, 0
001e80  13010100  seteq r2, r2, zero
001e84  93810100  seteq r3, r3, zero
001e88  1b02f20f  andi r4, r4, 255
001e8c  9b82f20f  andi r5, r5, 255
001e90  1b72f20f  setlti r4, r4, 255
001e94  9bf2f20f  setlti r5, r5, 255
001e98  17112200  or r2, r4, r2
001e9c  97913200  or r3, r5, r3
001ea0  17812100  and r2, r3, r2
001ea4  b7570106  beq r2, zero, 3572
001ea8  6303effc  loadli.w r6,  -400(r30)
001eac  bb670e06  bneq r28, zero, 3576
001eb0  37200c00  beq r24, zero, 8
001eb4  1f0c0e00  addli r24, r28, 0
001eb8  13611006  setle.f r2, zero, r1
001ebc  93e10006  setle.f r3, r1, zero
001ec0  17812100  and r2, r3, r2
001ec4  3b200100  bneq r2, zero, 8
001ec8  1f8c0000  addli r24, r1, 0
001ecc  13e18b05  setlt.f r2, r23, r24
001ed0  9f000c00  addli r1, r24, 0
001ed4  3b200100  bneq r2, zero, 8
001ed8  9f800b00  addli r1, r23, 0
001edc  1bb19b00  slli r2, r23, 9
001ee0  9b319c00  slli r3, r24, 9
001ee4  1bc27b01  srli r4, r23, 23
001ee8  9b427c01  srli r5, r24, 23
001eec  13010100  seteq r2, r2, zero
001ef0  93810100  seteq r3, r3, zero
001ef4  1b02f20f  andi r4, r4, 255
001ef8  9b82f20f  andi r5, r5, 255
001efc  1b72f20f  setlti r4, r4, 255
001f00  9bf2f20f  setlti r5, r5, 255
001f04  17112200  or r2, r4, r2
001f08  97913200  or r3, r5, r3
001f0c  17812100  and r2, r3, r2
001f10  b7060106  beq r2, zero, 3488
001f14  bb160c06  bneq r24, zero, 3492
001f18  37a00b00  beq r23, zero, 8
001f1c  9f0b0c00  addli r23, r24, 0
001f20  13611006  setle.f r2, zero, r1
001f24  93e10006  setle.f r3, r1, zero
001f28  17812100  and r2, r3, r2
001f2c  3b200100  bneq r2, zero, 8
001f30  9f8b0000  addli r23, r1, 0
001f34  13617b05  setlt.f r2, r22, r23
001f38  9f800b00  addli r1, r23, 0
001f3c  3b200100  bneq r2, zero, 8
001f40  9f000b00  addli r1, r22, 0
001f44  1b319b00  slli r2, r22, 9
001f48  9bb19b00  slli r3, r23, 9
001f4c  1b427b01  srli r4, r22, 23
001f50  9bc27b01  srli r5, r23, 23
001f54  13010100  seteq r2, r2, zero
001f58  93810100  seteq r3, r3, zero
001f5c  1b02f20f  andi r4, r4, 255
001f60  9b82f20f  andi r5, r5, 255
001f64  1b72f20f  setlti r4, r4, 255
001f68  9bf2f20f  setlti r5, r5, 255
001f6c  17112200  or r2, r4, r2
001f70  97913200  or r3, r5, r3
001f74  17812100  and r2, r3, r2
001f78  37350106  beq r2, zero, 3404
001f7c  3bc50b06  bneq r23, zero, 3408
001f80  37200b00  beq r22, zero, 8
001f84  1f8b0b00  addli r22, r23, 0
001f88  13611006  setle.f r2, zero, r1
001f8c  93e10006  setle.f r3, r1, zero
001f90  17812100  and r2, r3, r2
001f94  3b200100  bneq r2, zero, 8
001f98  1f8b0000  addli r22, r1, 0
001f9c  13616605  setlt.f r2, r12, r22
001fa0  9f000b00  addli r1, r22, 0
001fa4  3b200100  bneq r2, zero, 8
001fa8  9f000600  addli r1, r12, 0
001fac  1b319600  slli r2, r12, 9
001fb0  9b319b00  slli r3, r22, 9
001fb4  1b427601  srli r4, r12, 23
001fb8  9b427b01  srli r5, r22, 23
001fbc  13010100  seteq r2, r2, zero
001fc0  93810100  seteq r3, r3, zero
001fc4  1b02f20f  andi r4, r4, 255
001fc8  9b82f20f  andi r5, r5, 255
001fcc  1b72f20f  setlti r4, r4, 255
001fd0  9bf2f20f  setlti r5, r5, 255
001fd4  17112200  or r2, r4, r2
001fd8  97913200  or r3, r5, r3
001fdc  17812100  and r2, r3, r2
001fe0  b7630106  beq r2, zero, 3320
001fe4  bb730b06  bneq r22, zero, 3324
001fe8  37200600  beq r12, zero, 8
001fec  1f060b00  addli r12, r22, 0
001ff0  13611006  setle.f r2, zero, r1
001ff4  93e10006  setle.f r3, r1, zero
001ff8  17812100  and r2, r3, r2
001ffc  3b200100  bneq r2, zero, 8
002000  1f860000  addli r12, r1, 0
002004  1361c504  setlt.f r2, r10, r12
002008  9f000600  addli r1, r12, 0
00200c  3b200100  bneq r2, zero, 8
002010  9f000500  addli r1, r10, 0
002014  1b319500  slli r2, r10, 9
002018  9b319600  slli r3, r12, 9
00201c  1b427501  srli r4, r10, 23
002020  9b427601  srli r5, r12, 23
002024  13010100  seteq r2, r2, zero
002028  93810100  seteq r3, r3, zero
00202c  1b02f20f  andi r4, r4, 255
002030  9b82f20f  andi r5, r5, 255
002034  1b72f20f  setlti r4, r4, 255
002038  9bf2f20f  setlti r5, r5, 255
00203c  17112200  or r2, r4, r2
002040  97913200  or r3, r5, r3
002044  17812100  and r2, r3, r2
002048  b7120106  beq r2, zero, 3236
00204c  bb220606  bneq r12, zero, 3240
002050  37200500  beq r10, zero, 8
002054  1f050600  addli r10, r12, 0
002058  13611006  setle.f r2, zero, r1
00205c  93e10006  setle.f r3, r1, zero
002060  17812100  and r2, r3, r2
002064  3b200100  bneq r2, zero, 8
002068  1f850000  addli r10, r1, 0
00206c  13e1a404  setlt.f r2, r9, r10
002070  9f000500  addli r1, r10, 0
002074  3b200100  bneq r2, zero, 8
002078  9f800400  addli r1, r9, 0
00207c  1bb19400  slli r2, r9, 9
002080  9b319500  slli r3, r10, 9
002084  1bc27401  srli r4, r9, 23
002088  9b427501  srli r5, r10, 23
00208c  13010100  seteq r2, r2, zero
002090  93810100  seteq r3, r3, zero
002094  1b02f20f  andi r4, r4, 255
002098  9b82f20f  andi r5, r5, 255
00209c  1b72f20f  setlti r4, r4, 255
0020a0  9bf2f20f  setlti r5, r5, 255
0020a4  17112200  or r2, r4, r2
0020a8  97913200  or r3, r5, r3
0020ac  17812100  and r2, r3, r2
0020b0  37410106  beq r2, zero, 3152
0020b4  3b510506  bneq r10, zero, 3156
0020b8  37a00400  beq r9, zero, 8
0020bc  9f040500  addli r9, r10, 0
0020c0  13611006  setle.f r2, zero, r1
0020c4  93e10006  setle.f r3, r1, zero
0020c8  17812100  and r2, r3, r2
0020cc  3b200100  bneq r2, zero, 8
0020d0  9f840000  addli r9, r1, 0
0020d4  13619404  setlt.f r2, r8, r9
0020d8  9f800400  addli r1, r9, 0
0020dc  3b200100  bneq r2, zero, 8
0020e0  9f000400  addli r1, r8, 0
0020e4  1b319400  slli r2, r8, 9
0020e8  9bb19400  slli r3, r9, 9
0020ec  1b427401  srli r4, r8, 23
0020f0  9bc27401  srli r5, r9, 23
0020f4  13010100  seteq r2, r2, zero
0020f8  93810100  seteq r3, r3, zero
0020fc  1b02f20f  andi r4, r4, 255
002100  9b82f20f  andi r5, r5, 255
002104  1b72f20f  setlti r4, r4, 255
002108  9bf2f20f  setlti r5, r5, 255
00210c  17112200  or r2, r4, r2
002110  97913200  or r3, r5, r3
002114  17812100  and r2, r3, r2
002118  b77f0104  beq r2, zero, 3068
00211c  3b800406  bneq r9, zero, 3072
002120  37200400  beq r8, zero, 8
002124  1f840400  addli r8, r9, 0
002128  13611006  setle.f r2, zero, r1
00212c  93e10006  setle.f r3, r1, zero
002130  17812100  and r2, r3, r2
002134  3b200100  bneq r2, zero, 8
002138  1f840000  addli r8, r1, 0
00213c  13e18304  setlt.f r2, r7, r8
002140  9f000400  addli r1, r8, 0
002144  3b200100  bneq r2, zero, 8
002148  9f800300  addli r1, r7, 0
00214c  1bb19300  slli r2, r7, 9
002150  9b319400  slli r3, r8, 9
002154  1bc27301  srli r4, r7, 23
002158  9b427401  srli r5, r8, 23
00215c  13010100  seteq r2, r2, zero
002160  93810100  seteq r3, r3, zero
002164  1b02f20f  andi r4, r4, 255
002168  9b82f20f  andi r5, r5, 255
00216c  1b72f20f  setlti r4, r4, 255
002170  9bf2f20f  setlti r5, r5, 255
002174  17112200  or r2, r4, r2
002178  97913200  or r3, r5, r3
00217c  17812100  and r2, r3, r2
002180  b72e0104  beq r2, zero, 2984
002184  bb3e0404  bneq r8, zero, 2988
002188  37a00300  beq r7, zero, 8
00218c  9f030400  addli r7, r8, 0
002190  13611006  setle.f r2, zero, r1
002194  93e10006  setle.f r3, r1, zero
002198  17812100  and r2, r3, r2
00219c  3b200100  bneq r2, zero, 8
0021a0  9f830000  addli r7, r1, 0
0021a4  13617304  setlt.f r2, r6, r7
0021a8  9f800300  addli r1, r7, 0
0021ac  3b200100  bneq r2, zero, 8
0021b0  9f000300  addli r1, r6, 0
0021b4  1b319300  slli r2, r6, 9
0021b8  9bb19300  slli r3, r7, 9
0021bc  1b427301  srli r4, r6, 23
0021c0  9bc27301  srli r5, r7, 23
0021c4  13010100  seteq r2, r2, zero
0021c8  93810100  seteq r3, r3, zero
0021cc  1b02f20f  andi r4, r4, 255
0021d0  9b82f20f  andi r5, r5, 255
0021d4  1b72f20f  setlti r4, r4, 255
0021d8  9bf2f20f  setlti r5, r5, 255
0021dc  17112200  or r2, r4, r2
0021e0  97913200  or r3, r5, r3
0021e4  17812100  and r2, r3, r2
0021e8  375d0104  beq r2, zero, 2900
0021ec  3bed0304  bneq r7, zero, 2904
0021f0  37200300  beq r6, zero, 8
0021f4  1f830300  addli r6, r7, 0
0021f8  13611006  setle.f r2, zero, r1
0021fc  93e10006  setle.f r3, r1, zero
002200  17812100  and r2, r3, r2
002204  3b200100  bneq r2, zero, 8
002208  1f830000  addli r6, r1, 0
00220c  73e06500  stores.w r6, 0(r11)
002210  00a00300  mfence { lm, sm, gm }
002214  80a10a04  csr_set csr3, r21
002218  00d00100  sync_group
00221c  efc30500  loads.w r7, 0(r11)
002220  bf102d01  blt.s r26, r18, 36
002224  1f080000  addli r16, zero, 0
002228  1f0e0000  addli r28, zero, 0
00222c  5b050000  j 40
002230  2b01c07f  lui r2, 523264
002234  b7f900f0  beq r1, zero, -7556
002238  9f000100  addli r1, r2, 0
00223c  bb6902f0  bneq r4, zero, -7560
002240  5b4ffcff  j -7560
002244  0b617818  sub.f.rn r2, r16, r7
002248  8be07618  sub.f.rn r1, r13, r7
00224c  0f880000  exp.f.rn r16, r1
002250  0f0e0100  exp.f.rn r28, r2
002254  e3008ffd  loadli.w r1,  -320(r30)
002258  0b9cb011  add.s r24, r1, r27
00225c  e3407ffd  loadli.w r1,  -324(r30)
002260  8b9bb011  add.s r23, r1, r27
002264  e3007ffd  loadli.w r1,  -328(r30)
002268  0b9bb011  add.s r22, r1, r27
00226c  e3406ffd  loadli.w r1,  -332(r30)
002270  8b92b011  add.s r5, r1, r27
002274  e3006ffd  loadli.w r1,  -336(r30)
002278  8b96b011  add.s r13, r1, r27
00227c  e3405ffd  loadli.w r1,  -340(r30)
002280  0b96b011  add.s r12, r1, r27
002284  e3005ffd  loadli.w r1,  -344(r30)
002288  0b95b011  add.s r10, r1, r27
00228c  e3404ffd  loadli.w r1,  -348(r30)
002290  8b94b011  add.s r9, r1, r27
002294  e3004ffd  loadli.w r1,  -352(r30)
002298  0b94b011  add.s r8, r1, r27
00229c  e3403ffd  loadli.w r1,  -356(r30)
0022a0  0b93b011  add.s r6, r1, r27
0022a4  e3003ffd  loadli.w r1,  -360(r30)
0022a8  8b90b011  add.s r1, r1, r27
0022ac  e7411ffe  storeli.w r1, -228(r30)
0022b0  e3402ffd  loadli.w r1,  -364(r30)
0022b4  8b90b011  add.s r1, r1, r27
0022b8  67021ffe  storeli.w r1, -224(r30)
0022bc  e3002ffd  loadli.w r1,  -368(r30)
0022c0  8b90b011  add.s r1, r1, r27
0022c4  67421ffe  storeli.w r1, -220(r30)
0022c8  e3401ffd  loadli.w r1,  -372(r30)
0022cc  8b90b011  add.s r1, r1, r27
0022d0  e7021ffe  storeli.w r1, -216(r30)
0022d4  e3001ffd  loadli.w r1,  -376(r30)
0022d8  8b90b011  add.s r1, r1, r27
0022dc  9f0d0000  addli r27, zero, 0
0022e0  e7421ffe  storeli.w r1, -212(r30)
0022e4  db030000  j 28
0022e8  9f000000  addli r1, zero, 0
0022ec  1f010000  addli r2, zero, 0
0022f0  0b681810  add.f.rn r16, r16, r1
0022f4  0b6e2e10  add.f.rn r28, r28, r2
0022f8  9fcd0d00  addli r27, r27, 4
0022fc  37c13d01  beq r27, r19, 80
002300  3f202d01  blt.s r26, r18, 8
002304  dbfcffff  j -28
002308  8b90b711  add.s r1, r15, r27
00230c  0b91b811  add.s r2, r17, r27
002310  ebb14000  load.hu r3, 4(r1)
002314  6b324100  load.hu r4, 4(r2)
002318  ebb06000  load.hu r1, 6(r1)
00231c  6b316100  load.hu r2, 6(r2)
002320  b3910118  bfloat2float.rn r3, r3
002324  33120218  bfloat2float.rn r4, r4
002328  b3900018  bfloat2float.rn r1, r1
00232c  33110118  bfloat2float.rn r2, r2
002330  8be14110  add.f.rn r3, r3, r4
002334  8be02010  add.f.rn r1, r1, r2
002338  0be17118  sub.f.rn r2, r3, r7
00233c  8be17018  sub.f.rn r3, r1, r7
002340  8f000100  exp.f.rn r1, r2
002344  0f810100  exp.f.rn r2, r3
002348  5bf5ffff  j -88
00234c  8b60c811  add.f.rn r1, r16, r28
002350  63419ffd  loadli.w r2,  -308(r30)
002354  73601100  stores.w r1, 0(r2)
002358  00a00300  mfence { lm, sm, gm }
00235c  63023ffe  loadli.w r4,  -232(r30)
002360  80210204  csr_set csr3, r4
002364  00d00100  sync_group
002368  e3407ffe  loadli.w r1,  -196(r30)
00236c  3b980000  bneq r1, zero, 516
002370  6f480700  loads.w r16, 0(r14)
002374  ef4d4700  loads.w r27, 4(r14)
002378  6f4d8700  loads.w r26, 8(r14)
00237c  6f41c700  loads.w r2, 12(r14)
002380  ef410701  loads.w r3, 16(r14)
002384  8b60b811  add.f.rn r1, r16, r27
002388  8be0a011  add.f.rn r1, r1, r26
00238c  8be02010  add.f.rn r1, r1, r2
002390  6f414701  loads.w r2, 20(r14)
002394  8be03010  add.f.rn r1, r1, r3
002398  ef418701  loads.w r3, 24(r14)
00239c  8be02010  add.f.rn r1, r1, r2
0023a0  6f41c701  loads.w r2, 28(r14)
0023a4  8be03010  add.f.rn r1, r1, r3
0023a8  ef410702  loads.w r3, 32(r14)
0023ac  8be02010  add.f.rn r1, r1, r2
0023b0  6f414702  loads.w r2, 36(r14)
0023b4  8be03010  add.f.rn r1, r1, r3
0023b8  ef418702  loads.w r3, 40(r14)
0023bc  8be02010  add.f.rn r1, r1, r2
0023c0  6f41c702  loads.w r2, 44(r14)
0023c4  8be03010  add.f.rn r1, r1, r3
0023c8  ef410703  loads.w r3, 48(r14)
0023cc  8be02010  add.f.rn r1, r1, r2
0023d0  6f414703  loads.w r2, 52(r14)
0023d4  8be03010  add.f.rn r1, r1, r3
0023d8  ef418703  loads.w r3, 56(r14)
0023dc  8be02010  add.f.rn r1, r1, r2
0023e0  6f41c703  loads.w r2, 60(r14)
0023e4  8be03010  add.f.rn r1, r1, r3
0023e8  ef410704  loads.w r3, 64(r14)
0023ec  8be02010  add.f.rn r1, r1, r2
0023f0  6f414704  loads.w r2, 68(r14)
0023f4  8be03010  add.f.rn r1, r1, r3
0023f8  ef418704  loads.w r3, 72(r14)
0023fc  8be02010  add.f.rn r1, r1, r2
002400  6f41c704  loads.w r2, 76(r14)
002404  8be03010  add.f.rn r1, r1, r3
002408  ef410705  loads.w r3, 80(r14)
00240c  8be02010  add.f.rn r1, r1, r2
002410  6f414705  loads.w r2, 84(r14)
002414  8be03010  add.f.rn r1, r1, r3
002418  ef418705  loads.w r3, 88(r14)
00241c  8be02010  add.f.rn r1, r1, r2
002420  6f41c705  loads.w r2, 92(r14)
002424  8be03010  add.f.rn r1, r1, r3
002428  ef410706  loads.w r3, 96(r14)
00242c  8be02010  add.f.rn r1, r1, r2
002430  6f414706  loads.w r2, 100(r14)
002434  8be03010  add.f.rn r1, r1, r3
002438  ef418706  loads.w r3, 104(r14)
00243c  8be02010  add.f.rn r1, r1, r2
002440  6f41c706  loads.w r2, 108(r14)
002444  8be03010  add.f.rn r1, r1, r3
002448  ef410707  loads.w r3, 112(r14)
00244c  8be02010  add.f.rn r1, r1, r2
002450  6f414707  loads.w r2, 116(r14)
002454  8be03010  add.f.rn r1, r1, r3
002458  ef418707  loads.w r3, 120(r14)
00245c  8be02010  add.f.rn r1, r1, r2
002460  6f41c707  loads.w r2, 124(r14)
002464  8be03010  add.f.rn r1, r1, r3
002468  ef410708  loads.w r3, 128(r14)
00246c  8be02010  add.f.rn r1, r1, r2
002470  6f414708  loads.w r2, 132(r14)
002474  8be03010  add.f.rn r1, r1, r3
002478  ef418708  loads.w r3, 136(r14)
00247c  8be02010  add.f.rn r1, r1, r2
002480  6f41c708  loads.w r2, 140(r14)
002484  8be03010  add.f.rn r1, r1, r3
002488  ef410709  loads.w r3, 144(r14)
00248c  8be02010  add.f.rn r1, r1, r2
002490  6f414709  loads.w r2, 148(r14)
002494  8be03010  add.f.rn r1, r1, r3
002498  ef418709  loads.w r3, 152(r14)
00249c  8be02010  add.f.rn r1, r1, r2
0024a0  6f41c709  loads.w r2, 156(r14)
0024a4  8be03010  add.f.rn r1, r1, r3
0024a8  ef41070a  loads.w r3, 160(r14)
0024ac  8be02010  add.f.rn r1, r1, r2
0024b0  6f41470a  loads.w r2, 164(r14)
0024b4  8be03010  add.f.rn r1, r1, r3
0024b8  ef41870a  loads.w r3, 168(r14)
0024bc  8be02010  add.f.rn r1, r1, r2
0024c0  6f41c70a  loads.w r2, 172(r14)
0024c4  8be03010  add.f.rn r1, r1, r3
0024c8  ef41070b  loads.w r3, 176(r14)
0024cc  8be02010  add.f.rn r1, r1, r2
0024d0  6f41470b  loads.w r2, 180(r14)
0024d4  8be03010  add.f.rn r1, r1, r3
0024d8  ef41870b  loads.w r3, 184(r14)
0024dc  8be02010  add.f.rn r1, r1, r2
0024e0  6f41c70b  loads.w r2, 188(r14)
0024e4  8be03010  add.f.rn r1, r1, r3
0024e8  ef41070c  loads.w r3, 192(r14)
0024ec  8be02010  add.f.rn r1, r1, r2
0024f0  6f41470c  loads.w r2, 196(r14)
0024f4  8be03010  add.f.rn r1, r1, r3
0024f8  ef41870c  loads.w r3, 200(r14)
0024fc  8be02010  add.f.rn r1, r1, r2
002500  6f41c70c  loads.w r2, 204(r14)
002504  8be03010  add.f.rn r1, r1, r3
002508  ef41070d  loads.w r3, 208(r14)
00250c  8be02010  add.f.rn r1, r1, r2
002510  6f41470d  loads.w r2, 212(r14)
002514  8be03010  add.f.rn r1, r1, r3
002518  ef41870d  loads.w r3, 216(r14)
00251c  8be02010  add.f.rn r1, r1, r2
002520  6f41c70d  loads.w r2, 220(r14)
002524  8be03010  add.f.rn r1, r1, r3
002528  ef41070e  loads.w r3, 224(r14)
00252c  8be02010  add.f.rn r1, r1, r2
002530  6f41470e  loads.w r2, 228(r14)
002534  8be03010  add.f.rn r1, r1, r3
002538  ef41870e  loads.w r3, 232(r14)
00253c  8be02010  add.f.rn r1, r1, r2
002540  6f41c70e  loads.w r2, 236(r14)
002544  8be03010  add.f.rn r1, r1, r3
002548  ef41070f  loads.w r3, 240(r14)
00254c  8be02010  add.f.rn r1, r1, r2
002550  6f41470f  loads.w r2, 244(r14)
002554  8be03010  add.f.rn r1, r1, r3
002558  ef41870f  loads.w r3, 248(r14)
00255c  8be02010  add.f.rn r1, r1, r2
002560  6f41c70f  loads.w r2, 252(r14)
002564  8be03010  add.f.rn r1, r1, r3
002568  8be02010  add.f.rn r1, r1, r2
00256c  73601700  stores.w r1, 0(r14)
002570  00a00300  mfence { lm, sm, gm }
002574  80210204  csr_set csr3, r4
002578  00d00100  sync_group
00257c  6f480700  loads.w r16, 0(r14)
002580  9f0a0200  addli r21, r4, 0
002584  1fad0800  addli r26, r17, 2
002588  9f0d0000  addli r27, zero, 0
00258c  1f0e8000  addli r28, zero, 64
002590  ebb0ecff  load.hu r1, -2(r25)
002594  6bb10c00  load.hu r2, 0(r25)
002598  eb31edff  load.hu r3, -2(r26)
00259c  6b320d00  load.hu r4, 0(r26)
0025a0  9fcc0c00  addli r25, r25, 4
0025a4  1f4d0d00  addli r26, r26, 4
0025a8  b3900018  bfloat2float.rn r1, r1
0025ac  b3910118  bfloat2float.rn r3, r3
0025b0  33110118  bfloat2float.rn r2, r2
0025b4  33120218  bfloat2float.rn r4, r4
0025b8  8be03010  add.f.rn r1, r1, r3
0025bc  0b614110  add.f.rn r2, r2, r4
0025c0  8b11ba11  add.s r3, r20, r27
0025c4  9f8d1d00  addli r27, r27, 8
0025c8  8be07018  sub.f.rn r1, r1, r7
0025cc  0b617118  sub.f.rn r2, r2, r7
0025d0  8f800000  exp.f.rn r1, r1
0025d4  0f010100  exp.f.rn r2, r2
0025d8  8f800019  div.f.rn r1, r1, r16
0025dc  0f010119  div.f.rn r2, r2, r16
0025e0  67801100  storeli.w r1, 0(r3)
0025e4  67c02100  storeli.w r2, 4(r3)
0025e8  00a00000  mfence { lm }
0025ec  bb9ecdff  bneq r27, r28, -92
0025f0  b3100c28  sext_int2long r[2:3], r24
0025f4  9f2c0000  addli r25, zero, 2
0025f8  b3910b28  sext_int2long r[4:5], r23
0025fc  eb5b0f01  load.d r[24:25], 16(r30)
002600  ab0300f0  lui r7, 983040
002604  1f4d0000  addli r26, zero, 4
002608  1f480a00  addli r16, r20, 4
00260c  97b09003  sll.d r[2:3], r[2:3], r25
002610  97137d00  or r7, r26, r7
002614  97b19103  sll.d r[4:5], r[4:5], r25
002618  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
00261c  ffb30001  s_lm2gm r7, r16, 0(r[2:3])
002620  ab0300f0  lui r7, 983040
002624  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002628  b3110b28  sext_int2long r[4:5], r22
00262c  1f081a00  addli r16, r20, 8
002630  97137d00  or r7, r26, r7
002634  97b19103  sll.d r[4:5], r[4:5], r25
002638  ffb30001  s_lm2gm r7, r16, 0(r[2:3])
00263c  ab0300f0  lui r7, 983040
002640  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002644  b3910228  sext_int2long r[4:5], r5
002648  1f481a00  addli r16, r20, 12
00264c  ab0200f0  lui r5, 983040
002650  97137d00  or r7, r26, r7
002654  97b19103  sll.d r[4:5], r[4:5], r25
002658  97125d00  or r5, r26, r5
00265c  ffb30001  s_lm2gm r7, r16, 0(r[2:3])
002660  ab0300f0  lui r7, 983040
002664  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002668  b3910628  sext_int2long r[4:5], r13
00266c  9f062a00  addli r13, r20, 16
002670  97137d00  or r7, r26, r7
002674  97b19103  sll.d r[4:5], r[4:5], r25
002678  ffb3d000  s_lm2gm r7, r13, 0(r[2:3])
00267c  ab0300f0  lui r7, 983040
002680  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002684  b3110628  sext_int2long r[4:5], r12
002688  1f462a00  addli r12, r20, 20
00268c  97137d00  or r7, r26, r7
002690  97b19103  sll.d r[4:5], r[4:5], r25
002694  ffb3c000  s_lm2gm r7, r12, 0(r[2:3])
002698  ab0300f0  lui r7, 983040
00269c  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026a0  b3110528  sext_int2long r[4:5], r10
0026a4  1f053a00  addli r10, r20, 24
0026a8  97137d00  or r7, r26, r7
0026ac  97b19103  sll.d r[4:5], r[4:5], r25
0026b0  ffb3a000  s_lm2gm r7, r10, 0(r[2:3])
0026b4  ab0300f0  lui r7, 983040
0026b8  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026bc  b3910428  sext_int2long r[4:5], r9
0026c0  9f443a00  addli r9, r20, 28
0026c4  97137d00  or r7, r26, r7
0026c8  97b19103  sll.d r[4:5], r[4:5], r25
0026cc  ffb39000  s_lm2gm r7, r9, 0(r[2:3])
0026d0  ab0300f0  lui r7, 983040
0026d4  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026d8  b3110428  sext_int2long r[4:5], r8
0026dc  1f044a00  addli r8, r20, 32
0026e0  e3047ffe  loadli.w r9,  -200(r30)
0026e4  97137d00  or r7, r26, r7
0026e8  97b19103  sll.d r[4:5], r[4:5], r25
0026ec  ffb38000  s_lm2gm r7, r8, 0(r[2:3])
0026f0  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
0026f4  b3110328  sext_int2long r[4:5], r6
0026f8  2b0300f0  lui r6, 983040
0026fc  9f434a00  addli r7, r20, 36
002700  1f447a00  addli r8, r20, 60
002704  17136d00  or r6, r26, r6
002708  97b19103  sll.d r[4:5], r[4:5], r25
00270c  7fb37000  s_lm2gm r6, r7, 0(r[2:3])
002710  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
002714  e3413ffe  loadli.w r3,  -228(r30)
002718  1f035a00  addli r6, r20, 40
00271c  ab0300f0  lui r7, 983040
002720  ffb26000  s_lm2gm r5, r6, 0(r[2:3])
002724  eb520ff3  load.d r[6:7], -208(r30)
002728  97137d00  or r7, r26, r7
00272c  b3910128  sext_int2long r[4:5], r3
002730  97b19103  sll.d r[4:5], r[4:5], r25
002734  97b29203  sll.d r[6:7], r[6:7], r25
002738  8ba03b10  add.ul r[2:3], r[24:25], r[4:5]
00273c  ab0100f0  lui r3, 983040
002740  1f425a00  addli r4, r20, 44
002744  97113d00  or r3, r26, r3
002748  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
00274c  63024ffe  loadli.w r4,  -224(r30)
002750  ab0100f0  lui r3, 983040
002754  8ba05b10  add.ul r[2:3], r[24:25], r[6:7]
002758  1f036a00  addli r6, r20, 48
00275c  97113d00  or r3, r26, r3
002760  33120228  sext_int2long r[5:6], r4
002764  ffb14001  s_lm2gm r3, r20, 0(r[2:3])
002768  e3404ffe  loadli.w r1,  -220(r30)
00276c  17329203  sll.d r[5:6], r[5:6], r25
002770  8ba14b10  add.ul r[4:5], r[24:25], r[5:6]
002774  ab0200f0  lui r5, 983040
002778  b3900028  sext_int2long r[2:3], r1
00277c  97125d00  or r5, r26, r5
002780  97b09003  sll.d r[2:3], r[2:3], r25
002784  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
002788  ab0100f0  lui r3, 983040
00278c  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
002790  1f426a00  addli r4, r20, 52
002794  e3025ffe  loadli.w r5,  -216(r30)
002798  97113d00  or r3, r26, r3
00279c  b3920228  sext_int2long r[6:7], r5
0027a0  ffb14000  s_lm2gm r3, r4, 0(r[2:3])
0027a4  e3405ffe  loadli.w r1,  -212(r30)
0027a8  97b19203  sll.d r[4:5], r[6:7], r25
0027ac  ab0200f0  lui r5, 983040
0027b0  1f037a00  addli r6, r20, 56
0027b4  b3900028  sext_int2long r[2:3], r1
0027b8  8ba13b10  add.ul r[4:5], r[24:25], r[4:5]
0027bc  97125d00  or r5, r26, r5
0027c0  97b09003  sll.d r[2:3], r[2:3], r25
0027c4  ffb26100  s_lm2gm r5, r6, 0(r[4:5])
0027c8  9f024000  addli r5, zero, 32
0027cc  8ba01b10  add.ul r[2:3], r[24:25], r[2:3]
0027d0  ffb38000  s_lm2gm r7, r8, 0(r[2:3])
0027d4  e3408ffd  loadli.w r1,  -316(r30)
0027d8  00a00000  mfence { lm }
0027dc  8b941410  add.s r9, r9, r1
0027e0  e340affd  loadli.w r1,  -300(r30)
0027e4  bf8914ec  blt.s r9, r1, -9632
0027e8  5bad0000  j 1384
0027ec  2b01c07f  lui r2, 523264
0027f0  37b501ee  beq r3, zero, -8884
0027f4  9f010100  addli r3, r2, 0
0027f8  3ba500ee  bneq r1, zero, -8888
0027fc  5ba9fbff  j -8888
002800  2b01c07f  lui r2, 523264
002804  b79600ee  beq r1, zero, -8796
002808  9f000100  addli r1, r2, 0
00280c  bb8603ee  bneq r7, zero, -8800
002810  5bb4fbff  j -8800
002814  ab0dc07f  lui r27, 523264
002818  b7de03ee  beq r7, zero, -8268
00281c  9f830d00  addli r7, r27, 0
002820  bb4e08ee  bneq r16, zero, -8272
002824  5bf6fbff  j -8272
002828  ab03c07f  lui r7, 523264
00282c  e30a3ffc  loadli.w r21,  -488(r30)
002830  372205f0  beq r10, zero, -8056
002834  1f850300  addli r10, r7, 0
002838  3b120cf0  bneq r24, zero, -8060
00283c  db10fcff  j -8060
002840  ab03c07f  lui r7, 523264
002844  37730cf0  beq r24, zero, -7972
002848  1f8c0300  addli r24, r7, 0
00284c  3b6301f0  bneq r2, zero, -7976
002850  5b1bfcff  j -7976
002854  ab03c07f  lui r7, 523264
002858  63082ffc  loadli.w r16,  -496(r30)
00285c  b75401f0  beq r2, zero, -7884
002860  1f810300  addli r2, r7, 0
002864  bb4404f0  bneq r8, zero, -7888
002868  5b26fcff  j -7888
00286c  2b01c07f  lui r2, 523264
002870  63056ffc  loadli.w r10,  -464(r30)
002874  372604f0  beq r8, zero, -7800
002878  1f040100  addli r8, r2, 0
00287c  3b1603f0  bneq r6, zero, -7804
002880  db30fcff  j -7804
002884  2b01c07f  lui r2, 523264
002888  e3445ffc  loadli.w r9,  -468(r30)
00288c  377703f0  beq r6, zero, -7716
002890  1f030100  addli r6, r2, 0
002894  3be701f0  bneq r3, zero, -7720
002898  5b3bfcff  j -7720
00289c  2b01c07f  lui r2, 523264
0028a0  63045ffc  loadli.w r8,  -472(r30)
0028a4  b7c801f0  beq r3, zero, -7632
0028a8  9f010100  addli r3, r2, 0
0028ac  bb3806f0  bneq r12, zero, -7636
0028b0  db45fcff  j -7636
0028b4  2b01c07f  lui r2, 523264
0028b8  371a06f0  beq r12, zero, -7548
0028bc  1f060100  addli r12, r2, 0
0028c0  3b8a06f0  bneq r13, zero, -7552
0028c4  5b50fcff  j -7552
0028c8  2b01c07f  lui r2, 523264
0028cc  37fb06f0  beq r13, zero, -7460
0028d0  9f060100  addli r13, r2, 0
0028d4  3beb00f0  bneq r1, zero, -7464
0028d8  5b5bfcff  j -7464
0028dc  2b01c07f  lui r2, 523264
0028e0  e3034ffc  loadli.w r7,  -480(r30)
0028e4  b7dc00f0  beq r1, zero, -7372
0028e8  9f000100  addli r1, r2, 0
0028ec  bb4c0ef0  bneq r28, zero, -7376
0028f0  5b66fcff  j -7376
0028f4  ab00c07f  lui r1, 523264
0028f8  372e0ef0  beq r28, zero, -7288
0028fc  1f8e0000  addli r28, r1, 0
002900  3b9e0bf0  bneq r23, zero, -7292
002904  db70fcff  j -7292
002908  ab00c07f  lui r1, 523264
00290c  e342bffd  loadli.w r5,  -292(r30)
002910  b78f0bf0  beq r23, zero, -7200
002914  9f8b0000  addli r23, r1, 0
002918  3b7f02f0  bneq r4, zero, -7204
00291c  db7bfcff  j -7204
002920  ab00c07f  lui r1, 523264
002924  e302cffd  loadli.w r5,  -288(r30)
002928  b76002f2  beq r4, zero, -7112
00292c  1f820000  addli r4, r1, 0
002930  6343bffd  loadli.w r6,  -292(r30)
002934  bb5003f2  bneq r6, zero, -7116
002938  db86fcff  j -7116
00293c  ab00c07f  lui r1, 523264
002940  373203f2  beq r6, zero, -7028
002944  1f830000  addli r6, r1, 0
002948  e302cffd  loadli.w r5,  -288(r30)
00294c  3ba202f2  bneq r5, zero, -7032
002950  5b91fcff  j -7032
002954  ab00c07f  lui r1, 523264
002958  6342cffd  loadli.w r4,  -284(r30)
00295c  b71303f2  beq r6, zero, -6940
002960  1f830000  addli r6, r1, 0
002964  bb8306f2  bneq r13, zero, -6944
002968  5b9cfcff  j -6944
00296c  ab00c07f  lui r1, 523264
002970  b7e406f2  beq r13, zero, -6856
002974  9f860000  addli r13, r1, 0
002978  e342cffd  loadli.w r5,  -284(r30)
00297c  bbd402f2  bneq r5, zero, -6860
002980  dba6fcff  j -6860
002984  ab00c07f  lui r1, 523264
002988  6302dffd  loadli.w r4,  -280(r30)
00298c  37c606f2  beq r13, zero, -6768
002990  9f860000  addli r13, r1, 0
002994  3b360cf2  bneq r24, zero, -6772
002998  dbb1fcff  j -6772
00299c  ab00c07f  lui r1, 523264
0029a0  b7170cf2  beq r24, zero, -6684
0029a4  1f8c0000  addli r24, r1, 0
0029a8  e302dffd  loadli.w r5,  -280(r30)
0029ac  bb8702f2  bneq r5, zero, -6688
0029b0  5bbcfcff  j -6688
0029b4  ab00c07f  lui r1, 523264
0029b8  6342dffd  loadli.w r4,  -276(r30)
0029bc  371903f2  beq r6, zero, -6588
0029c0  1f830000  addli r6, r1, 0
0029c4  3b090ef2  bneq r28, zero, -6592
0029c8  5bc8fcff  j -6592
0029cc  ab00c07f  lui r1, 523264
0029d0  b70a0ef2  beq r28, zero, -6496
0029d4  1f8e0000  addli r28, r1, 0
0029d8  e342dffd  loadli.w r5,  -276(r30)
0029dc  3bfa02f2  bneq r5, zero, -6500
0029e0  dbd3fcff  j -6500
0029e4  ab00c07f  lui r1, 523264
0029e8  6302effd  loadli.w r4,  -272(r30)
0029ec  b76b0ef2  beq r28, zero, -6408
0029f0  1f8e0000  addli r28, r1, 0
0029f4  bb5b08f2  bneq r16, zero, -6412
0029f8  dbdefcff  j -6412
0029fc  ab00c07f  lui r1, 523264
002a00  373d08f2  beq r16, zero, -6324
002a04  1f880000  addli r16, r1, 0
002a08  e302effd  loadli.w r5,  -272(r30)
002a0c  3bad02f2  bneq r5, zero, -6328
002a10  5be9fcff  j -6328
002a14  ab00c07f  lui r1, 523264
002a18  6342effd  loadli.w r4,  -268(r30)
002a1c  b72e0ef2  beq r28, zero, -6232
002a20  1f8e0000  addli r28, r1, 0
002a24  bb9e0bf2  bneq r23, zero, -6236
002a28  dbf4fcff  j -6236
002a2c  ab00c07f  lui r1, 523264
002a30  37800bf4  beq r23, zero, -6144
002a34  9f8b0000  addli r23, r1, 0
002a38  e342effd  loadli.w r5,  -268(r30)
002a3c  bbff02f2  bneq r5, zero, -6148
002a40  dbfffcff  j -6148
002a44  ab00c07f  lui r1, 523264
002a48  6302fffd  loadli.w r4,  -264(r30)
002a4c  37e10bf4  beq r23, zero, -6056
002a50  9f8b0000  addli r23, r1, 0
002a54  3bd10af4  bneq r21, zero, -6060
002a58  db0afdff  j -6060
002a5c  ab00c07f  lui r1, 523264
002a60  b7b20af4  beq r21, zero, -5972
002a64  9f8a0000  addli r21, r1, 0
002a68  e302fffd  loadli.w r5,  -264(r30)
002a6c  bba202f4  bneq r5, zero, -5976
002a70  5b15fdff  j -5976
002a74  ab00c07f  lui r1, 523264
002a78  6342fffd  loadli.w r4,  -260(r30)
002a7c  37940af4  beq r21, zero, -5884
002a80  9f8a0000  addli r21, r1, 0
002a84  3b040bf4  bneq r22, zero, -5888
002a88  5b20fdff  j -5888
002a8c  ab00c07f  lui r1, 523264
002a90  37650bf4  beq r22, zero, -5800
002a94  1f8b0000  addli r22, r1, 0
002a98  e342fffd  loadli.w r5,  -260(r30)
002a9c  3bd502f4  bneq r5, zero, -5804
002aa0  db2afdff  j -5804
002aa4  ab00c07f  lui r1, 523264
002aa8  63020ffe  loadli.w r4,  -256(r30)
002aac  b7e60af4  beq r21, zero, -5704
002ab0  9f8a0000  addli r21, r1, 0
002ab4  bbd603f4  bneq r7, zero, -5708
002ab8  db36fdff  j -5708
002abc  ab00c07f  lui r1, 523264
002ac0  37d803f4  beq r7, zero, -5612
002ac4  9f830000  addli r7, r1, 0
002ac8  e3020ffe  loadli.w r5,  -256(r30)
002acc  3bc802f4  bneq r5, zero, -5616
002ad0  5b42fdff  j -5616
002ad4  ab00c07f  lui r1, 523264
002ad8  63420ffe  loadli.w r4,  -252(r30)
002adc  b7b903f4  beq r7, zero, -5524
002ae0  9f830000  addli r7, r1, 0
002ae4  bb2906f4  bneq r12, zero, -5528
002ae8  5b4dfdff  j -5528
002aec  ab00c07f  lui r1, 523264
002af0  371b06f4  beq r12, zero, -5436
002af4  1f860000  addli r12, r1, 0
002af8  e3420ffe  loadli.w r5,  -252(r30)
002afc  3b8b02f4  bneq r5, zero, -5440
002b00  5b58fdff  j -5440
002b04  ab00c07f  lui r1, 523264
002b08  63021ffe  loadli.w r4,  -248(r30)
002b0c  377c06f4  beq r12, zero, -5348
002b10  1f860000  addli r12, r1, 0
002b14  3b6c04f4  bneq r8, zero, -5352
002b18  5b63fdff  j -5352
002b1c  ab00c07f  lui r1, 523264
002b20  b74d04f4  beq r8, zero, -5264
002b24  1f840000  addli r8, r1, 0
002b28  e3021ffe  loadli.w r5,  -248(r30)
002b2c  bbbd02f4  bneq r5, zero, -5268
002b30  db6dfdff  j -5268
002b34  ab00c07f  lui r1, 523264
002b38  63421ffe  loadli.w r4,  -244(r30)
002b3c  372f04f4  beq r8, zero, -5176
002b40  1f840000  addli r8, r1, 0
002b44  3b9f04f4  bneq r9, zero, -5180
002b48  db78fdff  j -5180
002b4c  ab00c07f  lui r1, 523264
002b50  b78004f6  beq r9, zero, -5088
002b54  9f840000  addli r9, r1, 0
002b58  e3421ffe  loadli.w r5,  -244(r30)
002b5c  3bf002f6  bneq r5, zero, -5092
002b60  db83fdff  j -5092
002b64  ab00c07f  lui r1, 523264
002b68  63022ffe  loadli.w r4,  -240(r30)
002b6c  b7e104f6  beq r9, zero, -5000
002b70  9f840000  addli r9, r1, 0
002b74  bb5105f6  bneq r10, zero, -5004
002b78  db8efdff  j -5004
002b7c  ab00c07f  lui r1, 523264
002b80  374305f6  beq r10, zero, -4912
002b84  1f850000  addli r10, r1, 0
002b88  e3022ffe  loadli.w r5,  -240(r30)
002b8c  3bb302f6  bneq r5, zero, -4916
002b90  db99fdff  j -4916
002b94  ab00c07f  lui r1, 523264
002b98  63422ffe  loadli.w r4,  -236(r30)
002b9c  b72405f6  beq r10, zero, -4824
002ba0  1f850000  addli r10, r1, 0
002ba4  bb9404f6  bneq r9, zero, -4828
002ba8  dba4fdff  j -4828
002bac  ab00c07f  lui r1, 523264
002bb0  b7f504f6  beq r9, zero, -4740
002bb4  9f840000  addli r9, r1, 0
002bb8  e3422ffe  loadli.w r5,  -236(r30)
002bbc  bbe502f6  bneq r5, zero, -4744
002bc0  5baffdff  j -4744
002bc4  ab00c07f  lui r1, 523264
002bc8  37570cf6  beq r24, zero, -4652
002bcc  1f8c0000  addli r24, r1, 0
002bd0  3bc703f6  bneq r7, zero, -4656
002bd4  5bbafdff  j -4656
002bd8  ab00c07f  lui r1, 523264
002bdc  63423ffe  loadli.w r4,  -228(r30)
002be0  b7a803f6  beq r7, zero, -4568
002be4  9f830000  addli r7, r1, 0
002be8  bb1804f6  bneq r8, zero, -4572
002bec  dbc4fdff  j -4572
002bf0  ab00c07f  lui r1, 523264
002bf4  63024ffe  loadli.w r4,  -224(r30)
002bf8  b77904f6  beq r8, zero, -4484
002bfc  1f840000  addli r8, r1, 0
002c00  e3423ffe  loadli.w r5,  -228(r30)
002c04  bbe902f6  bneq r5, zero, -4488
002c08  5bcffdff  j -4488
002c0c  ab00c07f  lui r1, 523264
002c10  63424ffe  loadli.w r4,  -220(r30)
002c14  b72d0bf6  beq r22, zero, -4248
002c18  1f8b0000  addli r22, r1, 0
002c1c  bb9d06f6  bneq r13, zero, -4252
002c20  dbecfdff  j -4252
002c24  ab00c07f  lui r1, 523264
002c28  63025ffe  loadli.w r4,  -216(r30)
002c2c  37c106f8  beq r13, zero, -4016
002c30  9f860000  addli r13, r1, 0
002c34  3bb10af8  bneq r21, zero, -4020
002c38  db09feff  j -4020
002c3c  ab00c07f  lui r1, 523264
002c40  b7920af8  beq r21, zero, -3932
002c44  9f8a0000  addli r21, r1, 0
002c48  e3025ffe  loadli.w r5,  -216(r30)
002c4c  bb8202f8  bneq r5, zero, -3936
002c50  5b14feff  j -3936
002c54  ab00c07f  lui r1, 523264
002c58  63425ffe  loadli.w r4,  -212(r30)
002c5c  370408f8  beq r16, zero, -3840
002c60  1f880000  addli r16, r1, 0
002c64  bb7303f8  bneq r6, zero, -3844
002c68  db1ffeff  j -3844
002c6c  ab00c07f  lui r1, 523264
002c70  375503f8  beq r6, zero, -3756
002c74  1f830000  addli r6, r1, 0
002c78  e3425ffe  loadli.w r5,  -212(r30)
002c7c  3bc502f8  bneq r5, zero, -3760
002c80  5b2afeff  j -3760
002c84  ab00c07f  lui r1, 523264
002c88  b75608f8  beq r16, zero, -3660
002c8c  1f880000  addli r16, r1, 0
002c90  bb460ef8  bneq r28, zero, -3664
002c94  5b36feff  j -3664
002c98  ab00c07f  lui r1, 523264
002c9c  6303effc  loadli.w r6,  -400(r30)
002ca0  37480ef8  beq r28, zero, -3568
002ca4  1f8e0000  addli r28, r1, 0
002ca8  3b380cf8  bneq r24, zero, -3572
002cac  db41feff  j -3572
002cb0  ab00c07f  lui r1, 523264
002cb4  b7190cf8  beq r24, zero, -3484
002cb8  1f8c0000  addli r24, r1, 0
002cbc  bb890bf8  bneq r23, zero, -3488
002cc0  5b4cfeff  j -3488
002cc4  ab00c07f  lui r1, 523264
002cc8  b7ea0bf8  beq r23, zero, -3400
002ccc  9f8b0000  addli r23, r1, 0
002cd0  bb5a0bf8  bneq r22, zero, -3404
002cd4  db56feff  j -3404
002cd8  ab00c07f  lui r1, 523264
002cdc  373c0bf8  beq r22, zero, -3316
002ce0  1f8b0000  addli r22, r1, 0
002ce4  3b2c06f8  bneq r12, zero, -3320
002ce8  5b61feff  j -3320
002cec  ab00c07f  lui r1, 523264
002cf0  b70d06f8  beq r12, zero, -3232
002cf4  1f860000  addli r12, r1, 0
002cf8  3b7d05f8  bneq r10, zero, -3236
002cfc  db6bfeff  j -3236
002d00  ab00c07f  lui r1, 523264
002d04  b75e05f8  beq r10, zero, -3148
002d08  1f850000  addli r10, r1, 0
002d0c  bbce04f8  bneq r9, zero, -3152
002d10  5b76feff  j -3152
002d14  ab00c07f  lui r1, 523264
002d18  37a004fa  beq r9, zero, -3064
002d1c  9f840000  addli r9, r1, 0
002d20  3b1004fa  bneq r8, zero, -3068
002d24  db80feff  j -3068
002d28  ab00c07f  lui r1, 523264
002d2c  377104fa  beq r8, zero, -2980
002d30  1f840000  addli r8, r1, 0
002d34  3be103fa  bneq r7, zero, -2984
002d38  5b8bfeff  j -2984
002d3c  ab00c07f  lui r1, 523264
002d40  b7c203fa  beq r7, zero, -2896
002d44  9f830000  addli r7, r1, 0
002d48  bb3203fa  bneq r6, zero, -2900
002d4c  db95feff  j -2900
002d50  9f8e0e04  addli sp, sp, 512
002d54  00a00300  mfence { lm, sm, gm }
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
002f74  00100000  exit
002f78  00100000  exit
002f7c  00100000  exit
002f80  00100000  exit
002f84  00100000  exit
002f88  00100000  exit
002f8c  00100000  exit
002f90  00100000  exit
002f94  00100000  exit
002f98  00100000  exit
