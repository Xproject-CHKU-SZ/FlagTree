; SHA-256 12d8bc347981c9426ac55dca439c3c3afa353901140451f52fef14efdfddcb60
; P800 Cluster · XTDK LLVM 19 · 1856 / 1856 words decoded
; bound names: triton_per_fused__softmax_add_exp_prepare_softmax_online_sub_0
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
0000dc  9f8efef6  addli sp, sp, -1160
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f9e08  addli r30, sp, 1096
0000ec  9bb12000  slli r3, r1, 2
0000f0  1f010100  addli r2, r2, 0
0000f4  63444f00  loadli.w r8,  36(r30)
0000f8  63024f00  loadli.w r4,  32(r30)
0000fc  63035f00  loadli.w r6,  40(r30)
000100  8b932110  add.s r7, r3, r2
000104  0b124420  mul.s r4, r8, r4
000108  00540002  load_param_i r8, 0
00010c  9f822320  addli r5, r7, 4112
000110  0b126220  mul.s r4, r4, r6
000114  e74d5ff8  storeli.w r5, -804(r30)
000118  73e00200  stores.w zero, 0(r5)
00011c  abf20000  lui r5, 15
000120  00a00300  mfence { lm, sm, gm }
000124  1b96f2ff  ori r12, r5, 4095
000128  abf27fff  lui r5, 1046527
00012c  9b92f2ff  ori r5, r5, 4095
000130  80210604  csr_set csr3, r12
000134  00d00100  sync_group
000138  670e7ff8  storeli.w r7, -800(r30)
00013c  73e05300  stores.w r5, 0(r7)
000140  00a00300  mfence { lm, sm, gm }
000144  80210604  csr_set csr3, r12
000148  00d00100  sync_group
00014c  e70d4ff8  storeli.w r4, -808(r30)
000150  cb15820c  ble.s r4, r8, 6500
000154  1f022000  addli r4, zero, 16
000158  9b8df000  andi r27, r1, 15
00015c  1f250000  addli r10, zero, 2
000160  9f290000  addli r19, zero, 2
000164  1f0e0002  addli r28, zero, 256
000168  9f0c0ffe  addli r25, r30, -256
00016c  1f0d0004  addli r26, zero, 512
000170  9f07f001  addli r15, zero, 248
000174  674dcff8  storeli.w r12, -812(r30)
000178  0b924030  div.s r4, r1, r4
00017c  6706bff9  storeli.w r27, -928(r30)
000180  670d4ff8  storeli.w r4, -816(r30)
000184  1b324200  slli r4, r4, 4
000188  0b934018  sub.s r6, r1, r4
00018c  6b528f00  load.d r[5:6], 8(r30)
000190  9b346300  slli r9, r6, 6
000194  00d30002  load_param_i r6, 1
000198  9b906401  ori r1, r9, 22
00019c  e70c6ff8  storeli.w r6, -824(r30)
0001a0  1b931400  ori r6, r9, 1
0001a4  9b950401  ori r11, r9, 16
0001a8  e74c9ff8  storeli.w r9, -820(r30)
0001ac  e7451ff8  storeli.w r1, -932(r30)
0001b0  9b907401  ori r1, r9, 23
0001b4  674c6ff8  storeli.w r6, -828(r30)
0001b8  1b932400  ori r6, r9, 2
0001bc  e708bff8  storeli.w r11, -888(r30)
0001c0  e7051ff8  storeli.w r1, -936(r30)
0001c4  9b908401  ori r1, r9, 24
0001c8  670c6ff8  storeli.w r6, -832(r30)
0001cc  1b933400  ori r6, r9, 3
0001d0  67451ff8  storeli.w r1, -940(r30)
0001d4  9b909401  ori r1, r9, 25
0001d8  e74b6ff8  storeli.w r6, -836(r30)
0001dc  1b934400  ori r6, r9, 4
0001e0  67051ff8  storeli.w r1, -944(r30)
0001e4  9b90a401  ori r1, r9, 26
0001e8  e70b6ff8  storeli.w r6, -840(r30)
0001ec  1b935400  ori r6, r9, 5
0001f0  e7441ff8  storeli.w r1, -948(r30)
0001f4  9b90b401  ori r1, r9, 27
0001f8  674b6ff8  storeli.w r6, -844(r30)
0001fc  1b936400  ori r6, r9, 6
000200  e7041ff8  storeli.w r1, -952(r30)
000204  9b90c401  ori r1, r9, 28
000208  670b6ff8  storeli.w r6, -848(r30)
00020c  1b937400  ori r6, r9, 7
000210  67441ff8  storeli.w r1, -956(r30)
000214  9b90d401  ori r1, r9, 29
000218  e74a6ff8  storeli.w r6, -852(r30)
00021c  1b938400  ori r6, r9, 8
000220  67041ff8  storeli.w r1, -960(r30)
000224  9b90e401  ori r1, r9, 30
000228  e70a6ff8  storeli.w r6, -856(r30)
00022c  1b939400  ori r6, r9, 9
000230  e7431ff8  storeli.w r1, -964(r30)
000234  9b90f401  ori r1, r9, 31
000238  674a6ff8  storeli.w r6, -860(r30)
00023c  1b93a400  ori r6, r9, 10
000240  e7031ff8  storeli.w r1, -968(r30)
000244  9b900402  ori r1, r9, 32
000248  670a6ff8  storeli.w r6, -864(r30)
00024c  1b93b400  ori r6, r9, 11
000250  67431ff8  storeli.w r1, -972(r30)
000254  9b901402  ori r1, r9, 33
000258  e7496ff8  storeli.w r6, -868(r30)
00025c  1b93c400  ori r6, r9, 12
000260  67031ff8  storeli.w r1, -976(r30)
000264  9b902402  ori r1, r9, 34
000268  e7096ff8  storeli.w r6, -872(r30)
00026c  1b93d400  ori r6, r9, 13
000270  e7421ff8  storeli.w r1, -980(r30)
000274  9b903402  ori r1, r9, 35
000278  67496ff8  storeli.w r6, -876(r30)
00027c  1b93e400  ori r6, r9, 14
000280  e7021ff8  storeli.w r1, -984(r30)
000284  9b904402  ori r1, r9, 36
000288  67096ff8  storeli.w r6, -880(r30)
00028c  1b93f400  ori r6, r9, 15
000290  67421ff8  storeli.w r1, -988(r30)
000294  9b905402  ori r1, r9, 37
000298  e7486ff8  storeli.w r6, -884(r30)
00029c  33930428  sext_int2long r[7:8], r9
0002a0  67021ff8  storeli.w r1, -992(r30)
0002a4  9b906402  ori r1, r9, 38
0002a8  1733a302  sll.d r[7:8], r[7:8], r10
0002ac  1b951401  ori r10, r9, 17
0002b0  e7411ff8  storeli.w r1, -996(r30)
0002b4  9b907402  ori r1, r9, 39
0002b8  0b226210  add.ul r[5:6], r[5:6], r[7:8]
0002bc  6748aff8  storeli.w r10, -892(r30)
0002c0  e7011ff8  storeli.w r1, -1000(r30)
0002c4  9b908402  ori r1, r9, 40
0002c8  733c4fc6  store.d r[5:6], -904(r30)
0002cc  2bf2ffff  lui r4, 1048575
0002d0  9b922401  ori r5, r9, 18
0002d4  67411ff8  storeli.w r1, -1004(r30)
0002d8  9b909402  ori r1, r9, 41
0002dc  1b1202fc  ori r4, r4, 4032
0002e0  67475ff8  storeli.w r5, -908(r30)
0002e4  9b923401  ori r5, r9, 19
0002e8  67011ff8  storeli.w r1, -1008(r30)
0002ec  9b90a402  ori r1, r9, 42
0002f0  97814100  and r3, r3, r4
0002f4  1b924401  ori r4, r9, 20
0002f8  67075ff8  storeli.w r5, -912(r30)
0002fc  e7401ff8  storeli.w r1, -1012(r30)
000300  9b90b402  ori r1, r9, 43
000304  8b962110  add.s r13, r3, r2
000308  1b915401  ori r2, r9, 21
00030c  e7464ff8  storeli.w r4, -916(r30)
000310  e7001ff8  storeli.w r1, -1016(r30)
000314  9b90c402  ori r1, r9, 44
000318  67462ff8  storeli.w r2, -924(r30)
00031c  e706dff8  storeli.w r13, -920(r30)
000320  67401ff8  storeli.w r1, -1020(r30)
000324  9b90d402  ori r1, r9, 45
000328  67001ff8  storeli.w r1, -1024(r30)
00032c  9b90e402  ori r1, r9, 46
000330  e74f1ff6  storeli.w r1, -1028(r30)
000334  9b90f402  ori r1, r9, 47
000338  e70f1ff6  storeli.w r1, -1032(r30)
00033c  9b900403  ori r1, r9, 48
000340  674f1ff6  storeli.w r1, -1036(r30)
000344  9b901403  ori r1, r9, 49
000348  670f1ff6  storeli.w r1, -1040(r30)
00034c  9b902403  ori r1, r9, 50
000350  e74e1ff6  storeli.w r1, -1044(r30)
000354  9b903403  ori r1, r9, 51
000358  e70e1ff6  storeli.w r1, -1048(r30)
00035c  9b904403  ori r1, r9, 52
000360  674e1ff6  storeli.w r1, -1052(r30)
000364  9b905403  ori r1, r9, 53
000368  670e1ff6  storeli.w r1, -1056(r30)
00036c  9b906403  ori r1, r9, 54
000370  e74d1ff6  storeli.w r1, -1060(r30)
000374  9b907403  ori r1, r9, 55
000378  e70d1ff6  storeli.w r1, -1064(r30)
00037c  9b908403  ori r1, r9, 56
000380  674d1ff6  storeli.w r1, -1068(r30)
000384  9b909403  ori r1, r9, 57
000388  670d1ff6  storeli.w r1, -1072(r30)
00038c  9b90a403  ori r1, r9, 58
000390  e74c1ff6  storeli.w r1, -1076(r30)
000394  9b90b403  ori r1, r9, 59
000398  e70c1ff6  storeli.w r1, -1080(r30)
00039c  9b90c403  ori r1, r9, 60
0003a0  674c1ff6  storeli.w r1, -1084(r30)
0003a4  9b90d403  ori r1, r9, 61
0003a8  670c1ff6  storeli.w r1, -1088(r30)
0003ac  9b90e403  ori r1, r9, 62
0003b0  e74b1ff6  storeli.w r1, -1092(r30)
0003b4  9b90f403  ori r1, r9, 63
0003b8  e70b1ff6  storeli.w r1, -1096(r30)
0003bc  9f802620  addli r1, r13, 4112
0003c0  674e1ff8  storeli.w r1, -796(r30)
0003c4  9f000ffc  addli r1, r30, -512
0003c8  1f010000  addli r2, zero, 0
0003cc  8b912010  add.s r3, r1, r2
0003d0  1f011100  addli r2, r2, 8
0003d4  67800100  storeli.w zero, 0(r3)
0003d8  67c00100  storeli.w zero, 4(r3)
0003dc  00a00000  mfence { lm }
0003e0  bb3fc1ff  bneq r2, r28, -20
0003e4  63015f00  loadli.w r2,  40(r30)
0003e8  e3414f00  loadli.w r3,  36(r30)
0003ec  e74f8ffa  storeli.w r8, -516(r30)
0003f0  0b112430  div.s r2, r8, r2
0003f4  0b113130  div.s r2, r2, r3
0003f8  e301aff9  loadli.w r3,  -816(r30)
0003fc  1b312100  slli r2, r2, 2
000400  0b193110  add.s r18, r2, r3
000404  63419ff9  loadli.w r2,  -820(r30)
000408  ab0100f0  lui r3, 983040
00040c  1b3ba900  slli r22, r18, 10
000410  97113e00  or r3, r28, r3
000414  0b112b10  add.s r2, r22, r2
000418  33120128  sext_int2long r[5:6], r2
00041c  2b0100f0  lui r2, 983040
000420  17333203  sll.d r[7:8], r[5:6], r19
000424  6b520f00  load.d r[5:6], 0(r30)
000428  17112e00  or r2, r28, r2
00042c  73386fde  store.d r[7:8], -528(r30)
000430  0b226210  add.ul r[5:6], r[5:6], r[7:8]
000434  ff211200  l_gm2lm r3, r1, 0(r[5:6])
000438  eb518fc7  load.d r[4:5], -904(r30)
00043c  7fa19101  l_gm2lm r2, r25, 0(r[4:5])
000440  00a00000  mfence { lm }
000444  63010ffc  loadli.w r2,  -512(r30)
000448  63020ffe  loadli.w r4,  -256(r30)
00044c  e3410ffc  loadli.w r3,  -508(r30)
000450  e3420ffe  loadli.w r5,  -252(r30)
000454  8b6b4110  add.f.rn r23, r2, r4
000458  0bec5110  add.f.rn r24, r3, r5
00045c  9f830b00  addli r7, r23, 0
000460  1f020c00  addli r4, r24, 0
000464  3f30a901  blt.s r18, r26, 12
000468  ab0380ff  lui r7, 1046528
00046c  2b0280ff  lui r4, 1046528
000470  1fc10000  addli r2, r1, 4
000474  9f020000  addli r5, zero, 0
000478  e70e2ffa  storeli.w r2, -536(r30)
00047c  db020000  j 20
000480  9f821200  addli r5, r5, 8
000484  1f020300  addli r4, r6, 0
000488  9f030100  addli r7, r2, 0
00048c  3785f200  beq r5, r15, 320
000490  8b915010  add.s r3, r1, r5
000494  0b935c10  add.s r6, r25, r5
000498  63811100  loadli.w r2,  8(r3)
00049c  63041300  loadli.w r8,  8(r6)
0004a0  e3c11100  loadli.w r3,  12(r3)
0004a4  63431300  loadli.w r6,  12(r6)
0004a8  0b618110  add.f.rn r2, r2, r8
0004ac  1f840300  addli r8, r7, 0
0004b0  93647104  setlt.f r9, r2, r7
0004b4  3ba00400  bneq r9, zero, 8
0004b8  1f040100  addli r8, r2, 0
0004bc  9b349100  slli r9, r2, 9
0004c0  1bb59300  slli r10, r7, 9
0004c4  9b457101  srli r11, r2, 23
0004c8  1bc77301  srli r14, r7, 23
0004cc  93840400  seteq r9, r9, zero
0004d0  13050500  seteq r10, r10, zero
0004d4  9b85f50f  andi r11, r11, 255
0004d8  1b07f70f  andi r14, r14, 255
0004dc  9bf5f50f  setlti r11, r11, 255
0004e0  1b77f70f  setlti r14, r14, 255
0004e4  97949500  or r9, r11, r9
0004e8  1715a700  or r10, r14, r10
0004ec  97049500  and r9, r10, r9
0004f0  b7b20400  beq r9, zero, 172
0004f4  9f840300  addli r9, r7, 0
0004f8  bbc20300  bneq r7, zero, 176
0004fc  37200100  beq r2, zero, 8
000500  1f810400  addli r2, r9, 0
000504  93648006  setle.f r9, zero, r8
000508  13650406  setle.f r10, r8, zero
00050c  97049500  and r9, r10, r9
000510  3ba00400  bneq r9, zero, 8
000514  1f010400  addli r2, r8, 0
000518  3f20a901  blt.s r18, r26, 8
00051c  1f810300  addli r2, r7, 0
000520  0be36110  add.f.rn r6, r3, r6
000524  9f010200  addli r3, r4, 0
000528  93634304  setlt.f r7, r6, r4
00052c  3ba00300  bneq r7, zero, 8
000530  9f010300  addli r3, r6, 0
000534  9b339300  slli r7, r6, 9
000538  1b349200  slli r8, r4, 9
00053c  9b447301  srli r9, r6, 23
000540  1b457201  srli r10, r4, 23
000544  93830300  seteq r7, r7, zero
000548  13040400  seteq r8, r8, zero
00054c  9b84f40f  andi r9, r9, 255
000550  1b05f50f  andi r10, r10, 255
000554  9bf4f40f  setlti r9, r9, 255
000558  1b75f50f  setlti r10, r10, 255
00055c  97937400  or r7, r9, r7
000560  17148500  or r8, r10, r8
000564  97037400  and r7, r8, r7
000568  37b10300  beq r7, zero, 76
00056c  9f030200  addli r7, r4, 0
000570  3b410200  bneq r4, zero, 80
000574  37200300  beq r6, zero, 8
000578  1f830300  addli r6, r7, 0
00057c  93633006  setle.f r7, zero, r3
000580  13e40106  setle.f r8, r3, zero
000584  97037400  and r7, r8, r7
000588  3ba00300  bneq r7, zero, 8
00058c  1f830100  addli r6, r3, 0
000590  bf4ba9ff  blt.s r18, r26, -272
000594  1f030200  addli r6, r4, 0
000598  5bddffff  j -280
00059c  2b04c07f  lui r8, 523264
0005a0  9f840300  addli r9, r7, 0
0005a4  37ed03fe  beq r7, zero, -168
0005a8  9f040400  addli r9, r8, 0
0005ac  3b5d01fe  bneq r2, zero, -172
0005b0  dbeaffff  j -172
0005b4  ab01c07f  lui r3, 523264
0005b8  9f030200  addli r7, r4, 0
0005bc  b76e02fe  beq r4, zero, -72
0005c0  9f830100  addli r7, r3, 0
0005c4  bb5e03fe  bneq r6, zero, -76
0005c8  dbf6ffff  j -76
0005cc  13622304  setlt.f r4, r6, r2
0005d0  9f010100  addli r3, r2, 0
0005d4  3b200200  bneq r4, zero, 8
0005d8  9f010300  addli r3, r6, 0
0005dc  1b329300  slli r4, r6, 9
0005e0  9b329100  slli r5, r2, 9
0005e4  9b437301  srli r7, r6, 23
0005e8  1b447101  srli r8, r2, 23
0005ec  13020200  seteq r4, r4, zero
0005f0  93820200  seteq r5, r5, zero
0005f4  9b83f30f  andi r7, r7, 255
0005f8  1b04f40f  andi r8, r8, 255
0005fc  9bf3f30f  setlti r7, r7, 255
000600  1b74f40f  setlti r8, r8, 255
000604  17924300  or r4, r7, r4
000608  97125400  or r5, r8, r5
00060c  17824200  and r4, r5, r4
000610  371b0202  beq r4, zero, 1732
000614  3b2b0102  bneq r2, zero, 1736
000618  37200300  beq r6, zero, 8
00061c  1f030100  addli r6, r2, 0
000620  13613006  setle.f r2, zero, r3
000624  13e20106  setle.f r4, r3, zero
000628  17012200  and r2, r4, r2
00062c  3b200100  bneq r2, zero, 8
000630  1f830100  addli r6, r3, 0
000634  6301cff9  loadli.w r2,  -800(r30)
000638  73606100  stores.w r6, 0(r2)
00063c  00a00300  mfence { lm, sm, gm }
000640  80210604  csr_set csr3, r12
000644  00d00100  sync_group
000648  bbb90d02  bneq r27, zero, 1644
00064c  6fc20600  loads.w r4, 0(r13)
000650  6fc14600  loads.w r2, 4(r13)
000654  93624104  setlt.f r5, r2, r4
000658  9f010200  addli r3, r4, 0
00065c  3ba00200  bneq r5, zero, 8
000660  9f010100  addli r3, r2, 0
000664  9b329200  slli r5, r4, 9
000668  1b339100  slli r6, r2, 9
00066c  9b437201  srli r7, r4, 23
000670  1b447101  srli r8, r2, 23
000674  93820200  seteq r5, r5, zero
000678  13030300  seteq r6, r6, zero
00067c  9b83f30f  andi r7, r7, 255
000680  1b04f40f  andi r8, r8, 255
000684  9bf3f30f  setlti r7, r7, 255
000688  1b74f40f  setlti r8, r8, 255
00068c  97925300  or r5, r7, r5
000690  17136400  or r6, r8, r6
000694  97826200  and r5, r5, r6
000698  b7bb0208  beq r5, zero, 4844
00069c  bb4b0208  bneq r4, zero, 4848
0006a0  37200100  beq r2, zero, 8
0006a4  1f010200  addli r2, r4, 0
0006a8  13623006  setle.f r4, zero, r3
0006ac  93e20106  setle.f r5, r3, zero
0006b0  17824200  and r4, r5, r4
0006b4  3b200200  bneq r4, zero, 8
0006b8  1f810100  addli r2, r3, 0
0006bc  efcc8600  loads.w r25, 8(r13)
0006c0  9f010100  addli r3, r2, 0
0006c4  13e22c04  setlt.f r4, r25, r2
0006c8  3b200200  bneq r4, zero, 8
0006cc  9f810c00  addli r3, r25, 0
0006d0  1bb29c00  slli r4, r25, 9
0006d4  9b329100  slli r5, r2, 9
0006d8  1bc37c01  srli r6, r25, 23
0006dc  9b437101  srli r7, r2, 23
0006e0  13020200  seteq r4, r4, zero
0006e4  93820200  seteq r5, r5, zero
0006e8  1b03f30f  andi r6, r6, 255
0006ec  9b83f30f  andi r7, r7, 255
0006f0  1b73f30f  setlti r6, r6, 255
0006f4  9bf3f30f  setlti r7, r7, 255
0006f8  17124300  or r4, r6, r4
0006fc  97925300  or r5, r7, r5
000700  17824200  and r4, r5, r4
000704  375a0208  beq r4, zero, 4756
000708  3b6a0108  bneq r2, zero, 4760
00070c  37a00c00  beq r25, zero, 8
000710  9f0c0100  addli r25, r2, 0
000714  13613006  setle.f r2, zero, r3
000718  13e20106  setle.f r4, r3, zero
00071c  17012200  and r2, r4, r2
000720  3b200100  bneq r2, zero, 8
000724  9f8c0100  addli r25, r3, 0
000728  6fcdc600  loads.w r26, 12(r13)
00072c  6fc40601  loads.w r8, 16(r13)
000730  6fc34601  loads.w r6, 20(r13)
000734  efc88601  loads.w r17, 24(r13)
000738  efcac601  loads.w r21, 28(r13)
00073c  6fca0602  loads.w r20, 32(r13)
000740  efc94602  loads.w r19, 36(r13)
000744  6fc88602  loads.w r16, 40(r13)
000748  efc4c602  loads.w r9, 44(r13)
00074c  efc30603  loads.w r7, 48(r13)
000750  efc24603  loads.w r5, 52(r13)
000754  6fc28603  loads.w r4, 56(r13)
000758  6fc1c603  loads.w r2, 60(r13)
00075c  9f810c00  addli r3, r25, 0
000760  13659d05  setlt.f r10, r26, r25
000764  3b200500  bneq r10, zero, 8
000768  9f010d00  addli r3, r26, 0
00076c  1b359d00  slli r10, r26, 9
000770  9bb59c00  slli r11, r25, 9
000774  1b477d01  srli r14, r26, 23
000778  9bc77c01  srli r15, r25, 23
00077c  13050500  seteq r10, r10, zero
000780  93850500  seteq r11, r11, zero
000784  1b07f70f  andi r14, r14, 255
000788  9b87f70f  andi r15, r15, 255
00078c  1b77f70f  setlti r14, r14, 255
000790  9bf7f70f  setlti r15, r15, 255
000794  1715a700  or r10, r14, r10
000798  9795b700  or r11, r15, r11
00079c  1785a500  and r10, r11, r10
0007a0  37380508  beq r10, zero, 4620
0007a4  3bc80c08  bneq r25, zero, 4624
0007a8  37200d00  beq r26, zero, 8
0007ac  1f8d0c00  addli r26, r25, 0
0007b0  13653006  setle.f r10, zero, r3
0007b4  93e50106  setle.f r11, r3, zero
0007b8  1785a500  and r10, r11, r10
0007bc  3b200500  bneq r10, zero, 8
0007c0  1f8d0100  addli r26, r3, 0
0007c4  1365a405  setlt.f r10, r8, r26
0007c8  9f010d00  addli r3, r26, 0
0007cc  9f0c0ffe  addli r25, r30, -256
0007d0  3b200500  bneq r10, zero, 8
0007d4  9f010400  addli r3, r8, 0
0007d8  1b359400  slli r10, r8, 9
0007dc  9b359d00  slli r11, r26, 9
0007e0  1b477401  srli r14, r8, 23
0007e4  9b477d01  srli r15, r26, 23
0007e8  13050500  seteq r10, r10, zero
0007ec  93850500  seteq r11, r11, zero
0007f0  1b07f70f  andi r14, r14, 255
0007f4  9b87f70f  andi r15, r15, 255
0007f8  1b77f70f  setlti r14, r14, 255
0007fc  9bf7f70f  setlti r15, r15, 255
000800  1715a700  or r10, r14, r10
000804  9795b700  or r11, r15, r11
000808  1785a500  and r10, r11, r10
00080c  b7560508  beq r10, zero, 4532
000810  bb660d08  bneq r26, zero, 4536
000814  37200400  beq r8, zero, 8
000818  1f040d00  addli r8, r26, 0
00081c  13653006  setle.f r10, zero, r3
000820  93e50106  setle.f r11, r3, zero
000824  1785a500  and r10, r11, r10
000828  3b200500  bneq r10, zero, 8
00082c  1f840100  addli r8, r3, 0
000830  13658304  setlt.f r10, r6, r8
000834  9f010400  addli r3, r8, 0
000838  1f0d0004  addli r26, zero, 512
00083c  3b200500  bneq r10, zero, 8
000840  9f010300  addli r3, r6, 0
000844  1b359300  slli r10, r6, 9
000848  9b359400  slli r11, r8, 9
00084c  1b477301  srli r14, r6, 23
000850  9b477401  srli r15, r8, 23
000854  13050500  seteq r10, r10, zero
000858  93850500  seteq r11, r11, zero
00085c  1b07f70f  andi r14, r14, 255
000860  9b87f70f  andi r15, r15, 255
000864  1b77f70f  setlti r14, r14, 255
000868  9bf7f70f  setlti r15, r15, 255
00086c  1715a700  or r10, r14, r10
000870  9795b700  or r11, r15, r11
000874  1785a500  and r10, r11, r10
000878  37750508  beq r10, zero, 4444
00087c  9f07f001  addli r15, zero, 248
000880  bb050408  bneq r8, zero, 4448
000884  37200300  beq r6, zero, 8
000888  1f030400  addli r6, r8, 0
00088c  13643006  setle.f r8, zero, r3
000890  13e50106  setle.f r10, r3, zero
000894  17048500  and r8, r10, r8
000898  3b200400  bneq r8, zero, 8
00089c  1f830100  addli r6, r3, 0
0008a0  13e46804  setlt.f r8, r17, r6
0008a4  9f010300  addli r3, r6, 0
0008a8  3b200400  bneq r8, zero, 8
0008ac  9f810800  addli r3, r17, 0
0008b0  1bb49800  slli r8, r17, 9
0008b4  1b359300  slli r10, r6, 9
0008b8  9bc57801  srli r11, r17, 23
0008bc  1b477301  srli r14, r6, 23
0008c0  13040400  seteq r8, r8, zero
0008c4  13050500  seteq r10, r10, zero
0008c8  9b85f50f  andi r11, r11, 255
0008cc  1b07f70f  andi r14, r14, 255
0008d0  9bf5f50f  setlti r11, r11, 255
0008d4  1b77f70f  setlti r14, r14, 255
0008d8  17948500  or r8, r11, r8
0008dc  1715a700  or r10, r14, r10
0008e0  17048500  and r8, r10, r8
0008e4  37240408  beq r8, zero, 4360
0008e8  3b340308  bneq r6, zero, 4364
0008ec  37a00800  beq r17, zero, 8
0008f0  9f080300  addli r17, r6, 0
0008f4  13633006  setle.f r6, zero, r3
0008f8  13e40106  setle.f r8, r3, zero
0008fc  17036400  and r6, r8, r6
000900  3b200300  bneq r6, zero, 8
000904  9f880100  addli r17, r3, 0
000908  13e31a05  setlt.f r6, r21, r17
00090c  9f810800  addli r3, r17, 0
000910  3b200300  bneq r6, zero, 8
000914  9f810a00  addli r3, r21, 0
000918  1bb39a00  slli r6, r21, 9
00091c  1bb49800  slli r8, r17, 9
000920  1bc57a01  srli r10, r21, 23
000924  9bc57801  srli r11, r17, 23
000928  13030300  seteq r6, r6, zero
00092c  13040400  seteq r8, r8, zero
000930  1b05f50f  andi r10, r10, 255
000934  9b85f50f  andi r11, r11, 255
000938  1b75f50f  setlti r10, r10, 255
00093c  9bf5f50f  setlti r11, r11, 255
000940  17136500  or r6, r10, r6
000944  17948500  or r8, r11, r8
000948  17036400  and r6, r8, r6
00094c  b7520308  beq r6, zero, 4276
000950  bbe20808  bneq r17, zero, 4280
000954  37a00a00  beq r21, zero, 8
000958  9f8a0800  addli r21, r17, 0
00095c  13633006  setle.f r6, zero, r3
000960  13e40106  setle.f r8, r3, zero
000964  17036400  and r6, r8, r6
000968  3b200300  bneq r6, zero, 8
00096c  9f8a0100  addli r21, r3, 0
000970  13635a05  setlt.f r6, r20, r21
000974  9f810a00  addli r3, r21, 0
000978  3b200300  bneq r6, zero, 8
00097c  9f010a00  addli r3, r20, 0
000980  1b339a00  slli r6, r20, 9
000984  1bb49a00  slli r8, r21, 9
000988  1b457a01  srli r10, r20, 23
00098c  9bc57a01  srli r11, r21, 23
000990  13030300  seteq r6, r6, zero
000994  13040400  seteq r8, r8, zero
000998  1b05f50f  andi r10, r10, 255
00099c  9b85f50f  andi r11, r11, 255
0009a0  1b75f50f  setlti r10, r10, 255
0009a4  9bf5f50f  setlti r11, r11, 255
0009a8  17136500  or r6, r10, r6
0009ac  17948500  or r8, r11, r8
0009b0  17036400  and r6, r8, r6
0009b4  b7010308  beq r6, zero, 4192
0009b8  bb910a08  bneq r21, zero, 4196
0009bc  37200a00  beq r20, zero, 8
0009c0  1f8a0a00  addli r20, r21, 0
0009c4  13633006  setle.f r6, zero, r3
0009c8  13e40106  setle.f r8, r3, zero
0009cc  17036400  and r6, r8, r6
0009d0  3b200300  bneq r6, zero, 8
0009d4  1f8a0100  addli r20, r3, 0
0009d8  13e34905  setlt.f r6, r19, r20
0009dc  9f010a00  addli r3, r20, 0
0009e0  3b200300  bneq r6, zero, 8
0009e4  9f810900  addli r3, r19, 0
0009e8  1bb39900  slli r6, r19, 9
0009ec  1b349a00  slli r8, r20, 9
0009f0  1bc57901  srli r10, r19, 23
0009f4  9b457a01  srli r11, r20, 23
0009f8  13030300  seteq r6, r6, zero
0009fc  13040400  seteq r8, r8, zero
000a00  1b05f50f  andi r10, r10, 255
000a04  9b85f50f  andi r11, r11, 255
000a08  1b75f50f  setlti r10, r10, 255
000a0c  9bf5f50f  setlti r11, r11, 255
000a10  17136500  or r6, r10, r6
000a14  17948500  or r8, r11, r8
000a18  17036400  and r6, r8, r6
000a1c  37300308  beq r6, zero, 4108
000a20  3b400a08  bneq r20, zero, 4112
000a24  37a00900  beq r19, zero, 8
000a28  9f090a00  addli r19, r20, 0
000a2c  13633006  setle.f r6, zero, r3
000a30  13e40106  setle.f r8, r3, zero
000a34  17036400  and r6, r8, r6
000a38  3b200300  bneq r6, zero, 8
000a3c  9f890100  addli r19, r3, 0
000a40  13633805  setlt.f r6, r16, r19
000a44  9f810900  addli r3, r19, 0
000a48  3b200300  bneq r6, zero, 8
000a4c  9f010800  addli r3, r16, 0
000a50  1b339800  slli r6, r16, 9
000a54  1bb49900  slli r8, r19, 9
000a58  1b457801  srli r10, r16, 23
000a5c  9bc57901  srli r11, r19, 23
000a60  13030300  seteq r6, r6, zero
000a64  13040400  seteq r8, r8, zero
000a68  1b05f50f  andi r10, r10, 255
000a6c  9b85f50f  andi r11, r11, 255
000a70  1b75f50f  setlti r10, r10, 255
000a74  9bf5f50f  setlti r11, r11, 255
000a78  17136500  or r6, r10, r6
000a7c  17948500  or r8, r11, r8
000a80  17036400  and r6, r8, r6
000a84  b76e0306  beq r6, zero, 4024
000a88  bbfe0906  bneq r19, zero, 4028
000a8c  37200800  beq r16, zero, 8
000a90  1f880900  addli r16, r19, 0
000a94  13633006  setle.f r6, zero, r3
000a98  13e40106  setle.f r8, r3, zero
000a9c  17036400  and r6, r8, r6
000aa0  3b200300  bneq r6, zero, 8
000aa4  1f880100  addli r16, r3, 0
000aa8  13e30405  setlt.f r6, r9, r16
000aac  9f010800  addli r3, r16, 0
000ab0  3b200300  bneq r6, zero, 8
000ab4  9f810400  addli r3, r9, 0
000ab8  1bb39400  slli r6, r9, 9
000abc  1b349800  slli r8, r16, 9
000ac0  1bc57401  srli r10, r9, 23
000ac4  9b457801  srli r11, r16, 23
000ac8  13030300  seteq r6, r6, zero
000acc  13040400  seteq r8, r8, zero
000ad0  1b05f50f  andi r10, r10, 255
000ad4  9b85f50f  andi r11, r11, 255
000ad8  1b75f50f  setlti r10, r10, 255
000adc  9bf5f50f  setlti r11, r11, 255
000ae0  17136500  or r6, r10, r6
000ae4  17948500  or r8, r11, r8
000ae8  17036400  and r6, r8, r6
000aec  b71d0306  beq r6, zero, 3940
000af0  bb2d0806  bneq r16, zero, 3944
000af4  37a00400  beq r9, zero, 8
000af8  9f040800  addli r9, r16, 0
000afc  13633006  setle.f r6, zero, r3
000b00  13e40106  setle.f r8, r3, zero
000b04  17036400  and r6, r8, r6
000b08  3b200300  bneq r6, zero, 8
000b0c  9f840100  addli r9, r3, 0
000b10  13e39304  setlt.f r6, r7, r9
000b14  9f810400  addli r3, r9, 0
000b18  3b200300  bneq r6, zero, 8
000b1c  9f810300  addli r3, r7, 0
000b20  1bb39300  slli r6, r7, 9
000b24  1bb49400  slli r8, r9, 9
000b28  1bc57301  srli r10, r7, 23
000b2c  9bc57401  srli r11, r9, 23
000b30  13030300  seteq r6, r6, zero
000b34  13040400  seteq r8, r8, zero
000b38  1b05f50f  andi r10, r10, 255
000b3c  9b85f50f  andi r11, r11, 255
000b40  1b75f50f  setlti r10, r10, 255
000b44  9bf5f50f  setlti r11, r11, 255
000b48  17136500  or r6, r10, r6
000b4c  17948500  or r8, r11, r8
000b50  17036400  and r6, r8, r6
000b54  374c0306  beq r6, zero, 3856
000b58  3bdc0406  bneq r9, zero, 3860
000b5c  37a00300  beq r7, zero, 8
000b60  9f830400  addli r7, r9, 0
000b64  13633006  setle.f r6, zero, r3
000b68  13e40106  setle.f r8, r3, zero
000b6c  17036400  and r6, r8, r6
000b70  3b200300  bneq r6, zero, 8
000b74  9f830100  addli r7, r3, 0
000b78  13e37204  setlt.f r6, r5, r7
000b7c  9f810300  addli r3, r7, 0
000b80  3b200300  bneq r6, zero, 8
000b84  9f810200  addli r3, r5, 0
000b88  1bb39200  slli r6, r5, 9
000b8c  1bb49300  slli r8, r7, 9
000b90  9bc47201  srli r9, r5, 23
000b94  1bc57301  srli r10, r7, 23
000b98  13030300  seteq r6, r6, zero
000b9c  13040400  seteq r8, r8, zero
000ba0  9b84f40f  andi r9, r9, 255
000ba4  1b05f50f  andi r10, r10, 255
000ba8  9bf4f40f  setlti r9, r9, 255
000bac  1b75f50f  setlti r10, r10, 255
000bb0  17936400  or r6, r9, r6
000bb4  17148500  or r8, r10, r8
000bb8  17036400  and r6, r8, r6
000bbc  b77a0306  beq r6, zero, 3772
000bc0  3b8b0306  bneq r7, zero, 3776
000bc4  37a00200  beq r5, zero, 8
000bc8  9f820300  addli r5, r7, 0
000bcc  13633006  setle.f r6, zero, r3
000bd0  93e30106  setle.f r7, r3, zero
000bd4  17836300  and r6, r7, r6
000bd8  3b200300  bneq r6, zero, 8
000bdc  9f820100  addli r5, r3, 0
000be0  13635204  setlt.f r6, r4, r5
000be4  9f810200  addli r3, r5, 0
000be8  3b200300  bneq r6, zero, 8
000bec  9f010200  addli r3, r4, 0
000bf0  1b339200  slli r6, r4, 9
000bf4  9bb39200  slli r7, r5, 9
000bf8  1b447201  srli r8, r4, 23
000bfc  9bc47201  srli r9, r5, 23
000c00  13030300  seteq r6, r6, zero
000c04  93830300  seteq r7, r7, zero
000c08  1b04f40f  andi r8, r8, 255
000c0c  9b84f40f  andi r9, r9, 255
000c10  1b74f40f  setlti r8, r8, 255
000c14  9bf4f40f  setlti r9, r9, 255
000c18  17136400  or r6, r8, r6
000c1c  97937400  or r7, r9, r7
000c20  17836300  and r6, r7, r6
000c24  b7290306  beq r6, zero, 3688
000c28  bbb90206  bneq r5, zero, 3692
000c2c  37200200  beq r4, zero, 8
000c30  1f820200  addli r4, r5, 0
000c34  93623006  setle.f r5, zero, r3
000c38  13e30106  setle.f r6, r3, zero
000c3c  97025300  and r5, r6, r5
000c40  3ba00200  bneq r5, zero, 8
000c44  1f820100  addli r4, r3, 0
000c48  93624104  setlt.f r5, r2, r4
000c4c  9f010200  addli r3, r4, 0
000c50  3ba00200  bneq r5, zero, 8
000c54  9f010100  addli r3, r2, 0
000c58  9b329100  slli r5, r2, 9
000c5c  1b339200  slli r6, r4, 9
000c60  9b437101  srli r7, r2, 23
000c64  1b447201  srli r8, r4, 23
000c68  93820200  seteq r5, r5, zero
000c6c  13030300  seteq r6, r6, zero
000c70  9b83f30f  andi r7, r7, 255
000c74  1b04f40f  andi r8, r8, 255
000c78  9bf3f30f  setlti r7, r7, 255
000c7c  1b74f40f  setlti r8, r8, 255
000c80  97925300  or r5, r7, r5
000c84  17136400  or r6, r8, r6
000c88  97025300  and r5, r6, r5
000c8c  37d80206  beq r5, zero, 3604
000c90  3b680206  bneq r4, zero, 3608
000c94  37200100  beq r2, zero, 8
000c98  1f010200  addli r2, r4, 0
000c9c  13623006  setle.f r4, zero, r3
000ca0  93e20106  setle.f r5, r3, zero
000ca4  17824200  and r4, r5, r4
000ca8  3b200200  bneq r4, zero, 8
000cac  1f810100  addli r2, r3, 0
000cb0  73e02600  stores.w r2, 0(r13)
000cb4  00a00300  mfence { lm, sm, gm }
000cb8  80210604  csr_set csr3, r12
000cbc  00d00100  sync_group
000cc0  efc20600  loads.w r5, 0(r13)
000cc4  bf10a901  blt.s r18, r26, 36
000cc8  9f090000  addli r19, zero, 0
000ccc  1f0c0000  addli r24, zero, 0
000cd0  5b050000  j 40
000cd4  ab01c07f  lui r3, 523264
000cd8  370501fc  beq r2, zero, -1728
000cdc  1f810100  addli r2, r3, 0
000ce0  bb7403fc  bneq r6, zero, -1732
000ce4  db27ffff  j -1732
000ce8  8b615c18  sub.f.rn r3, r24, r5
000cec  0be15b18  sub.f.rn r2, r23, r5
000cf0  8f090100  exp.f.rn r19, r2
000cf4  0f8c0100  exp.f.rn r24, r3
000cf8  e3014ff9  loadli.w r3,  -864(r30)
000cfc  63418ff9  loadli.w r2,  -828(r30)
000d00  0b936111  add.s r6, r3, r22
000d04  e3413ff9  loadli.w r3,  -868(r30)
000d08  0b126111  add.s r4, r2, r22
000d0c  63018ff9  loadli.w r2,  -832(r30)
000d10  8b946111  add.s r9, r3, r22
000d14  e3013ff9  loadli.w r3,  -872(r30)
000d18  8b136111  add.s r7, r2, r22
000d1c  63417ff9  loadli.w r2,  -836(r30)
000d20  8b916111  add.s r3, r3, r22
000d24  0b146111  add.s r8, r2, r22
000d28  63017ff9  loadli.w r2,  -840(r30)
000d2c  e7403ffa  storeli.w r3, -756(r30)
000d30  e3412ff9  loadli.w r3,  -876(r30)
000d34  0b186111  add.s r16, r2, r22
000d38  63416ff9  loadli.w r2,  -844(r30)
000d3c  8b916111  add.s r3, r3, r22
000d40  8b186111  add.s r17, r2, r22
000d44  63016ff9  loadli.w r2,  -848(r30)
000d48  67013ffa  storeli.w r3, -752(r30)
000d4c  e3012ff9  loadli.w r3,  -880(r30)
000d50  0b1a6111  add.s r20, r2, r22
000d54  63415ff9  loadli.w r2,  -852(r30)
000d58  8b916111  add.s r3, r3, r22
000d5c  67413ffa  storeli.w r3, -748(r30)
000d60  e3411ff9  loadli.w r3,  -884(r30)
000d64  8b1a6111  add.s r21, r2, r22
000d68  63015ff9  loadli.w r2,  -856(r30)
000d6c  8b916111  add.s r3, r3, r22
000d70  8b1b6111  add.s r23, r2, r22
000d74  63414ff9  loadli.w r2,  -860(r30)
000d78  e7013ffa  storeli.w r3, -744(r30)
000d7c  e3011ff9  loadli.w r3,  -888(r30)
000d80  0b116111  add.s r2, r2, r22
000d84  8b916111  add.s r3, r3, r22
000d88  e7413ffa  storeli.w r3, -740(r30)
000d8c  e3410ff9  loadli.w r3,  -892(r30)
000d90  8b916111  add.s r3, r3, r22
000d94  67023ffa  storeli.w r3, -736(r30)
000d98  e341eff8  loadli.w r3,  -908(r30)
000d9c  8b916111  add.s r3, r3, r22
000da0  67423ffa  storeli.w r3, -732(r30)
000da4  e301eff8  loadli.w r3,  -912(r30)
000da8  8b916111  add.s r3, r3, r22
000dac  e7023ffa  storeli.w r3, -728(r30)
000db0  e341dff8  loadli.w r3,  -916(r30)
000db4  8b916111  add.s r3, r3, r22
000db8  e7423ffa  storeli.w r3, -724(r30)
000dbc  e341cff8  loadli.w r3,  -924(r30)
000dc0  8b916111  add.s r3, r3, r22
000dc4  67033ffa  storeli.w r3, -720(r30)
000dc8  e341bff8  loadli.w r3,  -932(r30)
000dcc  8b916111  add.s r3, r3, r22
000dd0  67433ffa  storeli.w r3, -716(r30)
000dd4  e301bff8  loadli.w r3,  -936(r30)
000dd8  8b916111  add.s r3, r3, r22
000ddc  e7033ffa  storeli.w r3, -712(r30)
000de0  e341aff8  loadli.w r3,  -940(r30)
000de4  8b916111  add.s r3, r3, r22
000de8  e7433ffa  storeli.w r3, -708(r30)
000dec  e301aff8  loadli.w r3,  -944(r30)
000df0  8b916111  add.s r3, r3, r22
000df4  67043ffa  storeli.w r3, -704(r30)
000df8  e3419ff8  loadli.w r3,  -948(r30)
000dfc  8b916111  add.s r3, r3, r22
000e00  67443ffa  storeli.w r3, -700(r30)
000e04  e3019ff8  loadli.w r3,  -952(r30)
000e08  8b916111  add.s r3, r3, r22
000e0c  e7043ffa  storeli.w r3, -696(r30)
000e10  e3418ff8  loadli.w r3,  -956(r30)
000e14  8b916111  add.s r3, r3, r22
000e18  e7443ffa  storeli.w r3, -692(r30)
000e1c  e3018ff8  loadli.w r3,  -960(r30)
000e20  8b916111  add.s r3, r3, r22
000e24  67053ffa  storeli.w r3, -688(r30)
000e28  e3417ff8  loadli.w r3,  -964(r30)
000e2c  8b916111  add.s r3, r3, r22
000e30  67453ffa  storeli.w r3, -684(r30)
000e34  e3017ff8  loadli.w r3,  -968(r30)
000e38  8b916111  add.s r3, r3, r22
000e3c  e7053ffa  storeli.w r3, -680(r30)
000e40  e3416ff8  loadli.w r3,  -972(r30)
000e44  8b916111  add.s r3, r3, r22
000e48  e7453ffa  storeli.w r3, -676(r30)
000e4c  e3016ff8  loadli.w r3,  -976(r30)
000e50  8b916111  add.s r3, r3, r22
000e54  67063ffa  storeli.w r3, -672(r30)
000e58  e3415ff8  loadli.w r3,  -980(r30)
000e5c  8b916111  add.s r3, r3, r22
000e60  67463ffa  storeli.w r3, -668(r30)
000e64  e3015ff8  loadli.w r3,  -984(r30)
000e68  8b916111  add.s r3, r3, r22
000e6c  e7063ffa  storeli.w r3, -664(r30)
000e70  e3414ff8  loadli.w r3,  -988(r30)
000e74  8b916111  add.s r3, r3, r22
000e78  e7463ffa  storeli.w r3, -660(r30)
000e7c  e3014ff8  loadli.w r3,  -992(r30)
000e80  8b916111  add.s r3, r3, r22
000e84  67073ffa  storeli.w r3, -656(r30)
000e88  e3413ff8  loadli.w r3,  -996(r30)
000e8c  8b916111  add.s r3, r3, r22
000e90  67473ffa  storeli.w r3, -652(r30)
000e94  e3013ff8  loadli.w r3,  -1000(r30)
000e98  8b916111  add.s r3, r3, r22
000e9c  e7073ffa  storeli.w r3, -648(r30)
000ea0  e3412ff8  loadli.w r3,  -1004(r30)
000ea4  8b916111  add.s r3, r3, r22
000ea8  e7473ffa  storeli.w r3, -644(r30)
000eac  e3012ff8  loadli.w r3,  -1008(r30)
000eb0  8b916111  add.s r3, r3, r22
000eb4  67083ffa  storeli.w r3, -640(r30)
000eb8  e3411ff8  loadli.w r3,  -1012(r30)
000ebc  8b916111  add.s r3, r3, r22
000ec0  67483ffa  storeli.w r3, -636(r30)
000ec4  e3011ff8  loadli.w r3,  -1016(r30)
000ec8  8b916111  add.s r3, r3, r22
000ecc  e7083ffa  storeli.w r3, -632(r30)
000ed0  e3410ff8  loadli.w r3,  -1020(r30)
000ed4  8b916111  add.s r3, r3, r22
000ed8  e7483ffa  storeli.w r3, -628(r30)
000edc  e3010ff8  loadli.w r3,  -1024(r30)
000ee0  8b916111  add.s r3, r3, r22
000ee4  67093ffa  storeli.w r3, -624(r30)
000ee8  e341fff7  loadli.w r3,  -1028(r30)
000eec  8b916111  add.s r3, r3, r22
000ef0  67493ffa  storeli.w r3, -620(r30)
000ef4  e301fff7  loadli.w r3,  -1032(r30)
000ef8  8b916111  add.s r3, r3, r22
000efc  e7093ffa  storeli.w r3, -616(r30)
000f00  e341eff7  loadli.w r3,  -1036(r30)
000f04  8b916111  add.s r3, r3, r22
000f08  e7493ffa  storeli.w r3, -612(r30)
000f0c  e301eff7  loadli.w r3,  -1040(r30)
000f10  8b916111  add.s r3, r3, r22
000f14  670a3ffa  storeli.w r3, -608(r30)
000f18  e341dff7  loadli.w r3,  -1044(r30)
000f1c  8b916111  add.s r3, r3, r22
000f20  674a3ffa  storeli.w r3, -604(r30)
000f24  e301dff7  loadli.w r3,  -1048(r30)
000f28  8b916111  add.s r3, r3, r22
000f2c  e70a3ffa  storeli.w r3, -600(r30)
000f30  e341cff7  loadli.w r3,  -1052(r30)
000f34  8b916111  add.s r3, r3, r22
000f38  e74a3ffa  storeli.w r3, -596(r30)
000f3c  e301cff7  loadli.w r3,  -1056(r30)
000f40  8b916111  add.s r3, r3, r22
000f44  670b3ffa  storeli.w r3, -592(r30)
000f48  e341bff7  loadli.w r3,  -1060(r30)
000f4c  8b916111  add.s r3, r3, r22
000f50  e74b3ffa  storeli.w r3, -580(r30)
000f54  e301bff7  loadli.w r3,  -1064(r30)
000f58  8b916111  add.s r3, r3, r22
000f5c  674c3ffa  storeli.w r3, -572(r30)
000f60  e341aff7  loadli.w r3,  -1068(r30)
000f64  8b916111  add.s r3, r3, r22
000f68  670c3ffa  storeli.w r3, -576(r30)
000f6c  e301aff7  loadli.w r3,  -1072(r30)
000f70  8b916111  add.s r3, r3, r22
000f74  e70c3ffa  storeli.w r3, -568(r30)
000f78  e3419ff7  loadli.w r3,  -1076(r30)
000f7c  8b916111  add.s r3, r3, r22
000f80  670d3ffa  storeli.w r3, -560(r30)
000f84  e3019ff7  loadli.w r3,  -1080(r30)
000f88  8b916111  add.s r3, r3, r22
000f8c  674d3ffa  storeli.w r3, -556(r30)
000f90  e3418ff7  loadli.w r3,  -1084(r30)
000f94  8b916111  add.s r3, r3, r22
000f98  e70d3ffa  storeli.w r3, -552(r30)
000f9c  e3018ff7  loadli.w r3,  -1088(r30)
000fa0  8b916111  add.s r3, r3, r22
000fa4  e74d3ffa  storeli.w r3, -548(r30)
000fa8  e3417ff7  loadli.w r3,  -1092(r30)
000fac  8b916111  add.s r3, r3, r22
000fb0  670e3ffa  storeli.w r3, -544(r30)
000fb4  e3017ff7  loadli.w r3,  -1096(r30)
000fb8  8b916111  add.s r3, r3, r22
000fbc  674e3ffa  storeli.w r3, -540(r30)
000fc0  9f010000  addli r3, zero, 0
000fc4  db030000  j 28
000fc8  1f050000  addli r10, zero, 0
000fcc  9f050000  addli r11, zero, 0
000fd0  8be9a910  add.f.rn r19, r19, r10
000fd4  0b6cbc10  add.f.rn r24, r24, r11
000fd8  9f811100  addli r3, r3, 8
000fdc  3791f100  beq r3, r15, 68
000fe0  3f20a901  blt.s r18, r26, 8
000fe4  dbfcffff  j -28
000fe8  0b953010  add.s r10, r1, r3
000fec  8b953c10  add.s r11, r25, r3
000ff0  63071500  loadli.w r14,  8(r10)
000ff4  e3871500  loadli.w r15,  8(r11)
000ff8  63451500  loadli.w r10,  12(r10)
000ffc  e3c51500  loadli.w r11,  12(r11)
001000  0b67f710  add.f.rn r14, r14, r15
001004  0b65b510  add.f.rn r10, r10, r11
001008  9f07f001  addli r15, zero, 248
00100c  8b655718  sub.f.rn r11, r14, r5
001010  0b675518  sub.f.rn r14, r10, r5
001014  0f850500  exp.f.rn r10, r11
001018  8f050700  exp.f.rn r11, r14
00101c  dbf6ffff  j -76
001020  8be18911  add.f.rn r3, r19, r24
001024  6345bff9  loadli.w r10,  -804(r30)
001028  73603500  stores.w r3, 0(r10)
00102c  00a00300  mfence { lm, sm, gm }
001030  80210604  csr_set csr3, r12
001034  00d00100  sync_group
001038  3ba20d00  bneq r27, zero, 136
00103c  6347cff9  loadli.w r14,  -796(r30)
001040  ef410700  loads.w r3, 0(r14)
001044  6f454700  loads.w r10, 4(r14)
001048  ef458700  loads.w r11, 8(r14)
00104c  8be1a110  add.f.rn r3, r3, r10
001050  6f45c700  loads.w r10, 12(r14)
001054  8be1b110  add.f.rn r3, r3, r11
001058  ef450701  loads.w r11, 16(r14)
00105c  8be1a110  add.f.rn r3, r3, r10
001060  6f454701  loads.w r10, 20(r14)
001064  8be1b110  add.f.rn r3, r3, r11
001068  ef458701  loads.w r11, 24(r14)
00106c  8be1a110  add.f.rn r3, r3, r10
001070  6f45c701  loads.w r10, 28(r14)
001074  8be1b110  add.f.rn r3, r3, r11
001078  ef450702  loads.w r11, 32(r14)
00107c  8be1a110  add.f.rn r3, r3, r10
001080  6f454702  loads.w r10, 36(r14)
001084  8be1b110  add.f.rn r3, r3, r11
001088  ef458702  loads.w r11, 40(r14)
00108c  8be1a110  add.f.rn r3, r3, r10
001090  6f45c702  loads.w r10, 44(r14)
001094  8be1b110  add.f.rn r3, r3, r11
001098  ef450703  loads.w r11, 48(r14)
00109c  8be1a110  add.f.rn r3, r3, r10
0010a0  6f454703  loads.w r10, 52(r14)
0010a4  8be1b110  add.f.rn r3, r3, r11
0010a8  ef458703  loads.w r11, 56(r14)
0010ac  8be1a110  add.f.rn r3, r3, r10
0010b0  6f45c703  loads.w r10, 60(r14)
0010b4  8be1b110  add.f.rn r3, r3, r11
0010b8  8be1a110  add.f.rn r3, r3, r10
0010bc  73603700  stores.w r3, 0(r14)
0010c0  00a00300  mfence { lm, sm, gm }
0010c4  80210604  csr_set csr3, r12
0010c8  00d00100  sync_group
0010cc  e341cff9  loadli.w r3,  -796(r30)
0010d0  2b05803f  lui r10, 260096
0010d4  efc10100  loads.w r3, 0(r3)
0010d8  8f013518  div.f.rn r3, r10, r3
0010dc  1f050000  addli r10, zero, 0
0010e0  8b95a010  add.s r11, r1, r10
0010e4  0b97ac10  add.s r14, r25, r10
0010e8  1f051500  addli r10, r10, 8
0010ec  e3090700  loadli.w r19,  0(r14)
0010f0  e3870500  loadli.w r15,  0(r11)
0010f4  63c90500  loadli.w r18,  4(r11)
0010f8  63470700  loadli.w r14,  4(r14)
0010fc  8be73711  add.f.rn r15, r15, r19
001100  0b67e910  add.f.rn r14, r18, r14
001104  8be75718  sub.f.rn r15, r15, r5
001108  0b675718  sub.f.rn r14, r14, r5
00110c  8f870700  exp.f.rn r15, r15
001110  0f070700  exp.f.rn r14, r14
001114  8be7f120  mul.f.rn r15, r3, r15
001118  0be7e120  mul.f.rn r14, r3, r14
00111c  6780f500  storeli.w r15, 0(r11)
001120  67c0e500  storeli.w r14, 4(r11)
001124  00a00000  mfence { lm }
001128  bb6ec5ff  bneq r10, r28, -72
00112c  b3100128  sext_int2long r[2:3], r2
001130  b3110228  sext_int2long r[4:5], r4
001134  1f2c0000  addli r24, zero, 2
001138  33950328  sext_int2long r[11:12], r7
00113c  33190428  sext_int2long r[19:20], r8
001140  b3930a28  sext_int2long r[8:9], r21
001144  33170828  sext_int2long r[15:16], r16
001148  339d0828  sext_int2long r[27:28], r17
00114c  33180a28  sext_int2long r[17:18], r20
001150  339a0b28  sext_int2long r[21:22], r23
001154  6b5b0f01  load.d r[23:24], 16(r30)
001158  9f060ffc  addli r13, r30, -512
00115c  63464ffb  loadli.w r12,  -604(r30)
001160  9f0c0ffe  addli r25, r30, -256
001164  733c1fce  store.d r[2:3], -776(r30)
001168  b3100328  sext_int2long r[2:3], r6
00116c  73347fce  store.d r[8:9], -792(r30)
001170  17338503  sll.d r[7:8], r[11:12], r24
001174  1f841600  addli r8, r13, 8
001178  63451ffb  loadli.w r10,  -628(r30)
00117c  73381fce  store.d r[2:3], -784(r30)
001180  b3900428  sext_int2long r[2:3], r9
001184  e304dffb  loadli.w r9,  -536(r30)
001188  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
00118c  33150528  sext_int2long r[11:12], r10
001190  73301fd0  store.d r[2:3], -768(r30)
001194  17b18103  sll.d r[3:4], r[4:5], r24
001198  9f400000  addli r1, zero, 4
00119c  0b222b10  add.ul r[5:6], r[23:24], r[3:4]
0011a0  2b0100f0  lui r2, 983040
0011a4  ab0100f0  lui r3, 983040
0011a8  17912000  or r2, r1, r2
0011ac  97913000  or r3, r1, r3
0011b0  ff318300  s_lm2gm r3, r8, 0(r[7:8])
0011b4  7f319200  s_lm2gm r2, r9, 0(r[5:6])
0011b8  17318903  sll.d r[3:4], r[19:20], r24
0011bc  2b0300f0  lui r6, 983040
0011c0  1fc41600  addli r8, r13, 12
0011c4  17328703  sll.d r[5:6], r[15:16], r24
0011c8  ab0300f0  lui r7, 983040
0011cc  9f842600  addli r9, r13, 16
0011d0  33190628  sext_int2long r[19:20], r12
0011d4  63465ffb  loadli.w r12,  -596(r30)
0011d8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0011dc  17936000  or r6, r1, r6
0011e0  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
0011e4  97937000  or r7, r1, r7
0011e8  7f338100  s_lm2gm r6, r8, 0(r[3:4])
0011ec  17318d03  sll.d r[3:4], r[27:28], r24
0011f0  2b0300f0  lui r6, 983040
0011f4  1fc42600  addli r8, r13, 20
0011f8  ff339200  s_lm2gm r7, r9, 0(r[5:6])
0011fc  17328803  sll.d r[5:6], r[17:18], r24
001200  ab0300f0  lui r7, 983040
001204  9f843600  addli r9, r13, 24
001208  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00120c  17936000  or r6, r1, r6
001210  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
001214  97937000  or r7, r1, r7
001218  7f338100  s_lm2gm r6, r8, 0(r[3:4])
00121c  6b518fce  load.d r[3:4], -792(r30)
001220  2b0300f0  lui r6, 983040
001224  1fc43600  addli r8, r13, 28
001228  ff339200  s_lm2gm r7, r9, 0(r[5:6])
00122c  17328a03  sll.d r[5:6], r[21:22], r24
001230  ab0300f0  lui r7, 983040
001234  9f844600  addli r9, r13, 32
001238  2b0a00f0  lui r20, 983040
00123c  9fca6601  addli r21, r13, 180
001240  17936000  or r6, r1, r6
001244  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
001248  97937000  or r7, r1, r7
00124c  179a4001  or r20, r1, r20
001250  17318103  sll.d r[3:4], r[3:4], r24
001254  ff339200  s_lm2gm r7, r9, 0(r[5:6])
001258  6b520fcf  load.d r[5:6], -784(r30)
00125c  ab0300f0  lui r7, 983040
001260  9f845600  addli r9, r13, 40
001264  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
001268  97937000  or r7, r1, r7
00126c  7f338100  s_lm2gm r6, r8, 0(r[3:4])
001270  6b518fcf  load.d r[3:4], -776(r30)
001274  2b0300f0  lui r6, 983040
001278  1fc44600  addli r8, r13, 36
00127c  17328203  sll.d r[5:6], r[5:6], r24
001280  17936000  or r6, r1, r6
001284  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
001288  17318103  sll.d r[3:4], r[3:4], r24
00128c  ff339200  s_lm2gm r7, r9, 0(r[5:6])
001290  2b0200f0  lui r4, 983040
001294  9fc25600  addli r5, r13, 44
001298  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00129c  17924000  or r4, r1, r4
0012a0  7f338100  s_lm2gm r6, r8, 0(r[3:4])
0012a4  6b510fd0  load.d r[3:4], -768(r30)
0012a8  63431ffa  loadli.w r6,  -756(r30)
0012ac  63440ffb  loadli.w r8,  -636(r30)
0012b0  17318103  sll.d r[3:4], r[3:4], r24
0012b4  33130328  sext_int2long r[7:8], r6
0012b8  33140428  sext_int2long r[9:10], r8
0012bc  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0012c0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0012c4  17318303  sll.d r[3:4], r[7:8], r24
0012c8  63032ffa  loadli.w r6,  -752(r30)
0012cc  2b0200f0  lui r4, 983040
0012d0  9f826600  addli r5, r13, 48
0012d4  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0012d8  17924000  or r4, r1, r4
0012dc  33130328  sext_int2long r[7:8], r6
0012e0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0012e4  2b0200f0  lui r4, 983040
0012e8  9fc26600  addli r5, r13, 52
0012ec  17318303  sll.d r[3:4], r[7:8], r24
0012f0  63432ffa  loadli.w r6,  -748(r30)
0012f4  17924000  or r4, r1, r4
0012f8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0012fc  33130328  sext_int2long r[7:8], r6
001300  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001304  2b0200f0  lui r4, 983040
001308  9f827600  addli r5, r13, 56
00130c  17318303  sll.d r[3:4], r[7:8], r24
001310  63033ffa  loadli.w r6,  -744(r30)
001314  17924000  or r4, r1, r4
001318  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00131c  33130328  sext_int2long r[7:8], r6
001320  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001324  2b0200f0  lui r4, 983040
001328  9fc27600  addli r5, r13, 60
00132c  17318303  sll.d r[3:4], r[7:8], r24
001330  63433ffa  loadli.w r6,  -740(r30)
001334  17924000  or r4, r1, r4
001338  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00133c  33130328  sext_int2long r[7:8], r6
001340  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001344  2b0200f0  lui r4, 983040
001348  9f828600  addli r5, r13, 64
00134c  17318303  sll.d r[3:4], r[7:8], r24
001350  63034ffa  loadli.w r6,  -736(r30)
001354  17924000  or r4, r1, r4
001358  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00135c  33130328  sext_int2long r[7:8], r6
001360  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001364  2b0200f0  lui r4, 983040
001368  9fc28600  addli r5, r13, 68
00136c  17318303  sll.d r[3:4], r[7:8], r24
001370  63434ffa  loadli.w r6,  -732(r30)
001374  17924000  or r4, r1, r4
001378  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00137c  33130328  sext_int2long r[7:8], r6
001380  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001384  2b0200f0  lui r4, 983040
001388  9f829600  addli r5, r13, 72
00138c  17318303  sll.d r[3:4], r[7:8], r24
001390  63035ffa  loadli.w r6,  -728(r30)
001394  17924000  or r4, r1, r4
001398  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00139c  33130328  sext_int2long r[7:8], r6
0013a0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0013a4  2b0200f0  lui r4, 983040
0013a8  9fc29600  addli r5, r13, 76
0013ac  17318303  sll.d r[3:4], r[7:8], r24
0013b0  63435ffa  loadli.w r6,  -724(r30)
0013b4  17924000  or r4, r1, r4
0013b8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0013bc  33130328  sext_int2long r[7:8], r6
0013c0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0013c4  2b0200f0  lui r4, 983040
0013c8  9f82a600  addli r5, r13, 80
0013cc  17318303  sll.d r[3:4], r[7:8], r24
0013d0  63036ffa  loadli.w r6,  -720(r30)
0013d4  17924000  or r4, r1, r4
0013d8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0013dc  33130328  sext_int2long r[7:8], r6
0013e0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0013e4  2b0200f0  lui r4, 983040
0013e8  9fc2a600  addli r5, r13, 84
0013ec  17318303  sll.d r[3:4], r[7:8], r24
0013f0  63436ffa  loadli.w r6,  -716(r30)
0013f4  17924000  or r4, r1, r4
0013f8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0013fc  33130328  sext_int2long r[7:8], r6
001400  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001404  2b0200f0  lui r4, 983040
001408  9f82b600  addli r5, r13, 88
00140c  17318303  sll.d r[3:4], r[7:8], r24
001410  63037ffa  loadli.w r6,  -712(r30)
001414  17924000  or r4, r1, r4
001418  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00141c  33130328  sext_int2long r[7:8], r6
001420  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001424  2b0200f0  lui r4, 983040
001428  9fc2b600  addli r5, r13, 92
00142c  17318303  sll.d r[3:4], r[7:8], r24
001430  63437ffa  loadli.w r6,  -708(r30)
001434  17924000  or r4, r1, r4
001438  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00143c  33130328  sext_int2long r[7:8], r6
001440  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001444  2b0200f0  lui r4, 983040
001448  9f82c600  addli r5, r13, 96
00144c  17318303  sll.d r[3:4], r[7:8], r24
001450  63038ffa  loadli.w r6,  -704(r30)
001454  17924000  or r4, r1, r4
001458  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00145c  33130328  sext_int2long r[7:8], r6
001460  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001464  2b0200f0  lui r4, 983040
001468  9fc2c600  addli r5, r13, 100
00146c  17318303  sll.d r[3:4], r[7:8], r24
001470  63438ffa  loadli.w r6,  -700(r30)
001474  17924000  or r4, r1, r4
001478  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00147c  33130328  sext_int2long r[7:8], r6
001480  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001484  2b0200f0  lui r4, 983040
001488  9f82d600  addli r5, r13, 104
00148c  17318303  sll.d r[3:4], r[7:8], r24
001490  63039ffa  loadli.w r6,  -696(r30)
001494  17924000  or r4, r1, r4
001498  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00149c  33130328  sext_int2long r[7:8], r6
0014a0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0014a4  2b0200f0  lui r4, 983040
0014a8  9fc2d600  addli r5, r13, 108
0014ac  17318303  sll.d r[3:4], r[7:8], r24
0014b0  63439ffa  loadli.w r6,  -692(r30)
0014b4  17924000  or r4, r1, r4
0014b8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0014bc  33130328  sext_int2long r[7:8], r6
0014c0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0014c4  2b0200f0  lui r4, 983040
0014c8  9f82e600  addli r5, r13, 112
0014cc  17318303  sll.d r[3:4], r[7:8], r24
0014d0  6303affa  loadli.w r6,  -688(r30)
0014d4  17924000  or r4, r1, r4
0014d8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0014dc  33130328  sext_int2long r[7:8], r6
0014e0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0014e4  2b0200f0  lui r4, 983040
0014e8  9fc2e600  addli r5, r13, 116
0014ec  17318303  sll.d r[3:4], r[7:8], r24
0014f0  6343affa  loadli.w r6,  -684(r30)
0014f4  17924000  or r4, r1, r4
0014f8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0014fc  33130328  sext_int2long r[7:8], r6
001500  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001504  2b0200f0  lui r4, 983040
001508  9f82f600  addli r5, r13, 120
00150c  17318303  sll.d r[3:4], r[7:8], r24
001510  6303bffa  loadli.w r6,  -680(r30)
001514  17924000  or r4, r1, r4
001518  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00151c  33130328  sext_int2long r[7:8], r6
001520  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001524  2b0200f0  lui r4, 983040
001528  9fc2f600  addli r5, r13, 124
00152c  17318303  sll.d r[3:4], r[7:8], r24
001530  6343bffa  loadli.w r6,  -676(r30)
001534  17924000  or r4, r1, r4
001538  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00153c  33130328  sext_int2long r[7:8], r6
001540  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001544  2b0200f0  lui r4, 983040
001548  9f820601  addli r5, r13, 128
00154c  17318303  sll.d r[3:4], r[7:8], r24
001550  6303cffa  loadli.w r6,  -672(r30)
001554  17924000  or r4, r1, r4
001558  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00155c  33130328  sext_int2long r[7:8], r6
001560  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001564  2b0200f0  lui r4, 983040
001568  9fc20601  addli r5, r13, 132
00156c  17318303  sll.d r[3:4], r[7:8], r24
001570  6343cffa  loadli.w r6,  -668(r30)
001574  17924000  or r4, r1, r4
001578  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00157c  33130328  sext_int2long r[7:8], r6
001580  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001584  2b0200f0  lui r4, 983040
001588  9f821601  addli r5, r13, 136
00158c  17318303  sll.d r[3:4], r[7:8], r24
001590  6303dffa  loadli.w r6,  -664(r30)
001594  17924000  or r4, r1, r4
001598  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
00159c  33130328  sext_int2long r[7:8], r6
0015a0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0015a4  2b0200f0  lui r4, 983040
0015a8  9fc21601  addli r5, r13, 140
0015ac  17318303  sll.d r[3:4], r[7:8], r24
0015b0  6343dffa  loadli.w r6,  -660(r30)
0015b4  17924000  or r4, r1, r4
0015b8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0015bc  33130328  sext_int2long r[7:8], r6
0015c0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0015c4  2b0200f0  lui r4, 983040
0015c8  9f822601  addli r5, r13, 144
0015cc  17318303  sll.d r[3:4], r[7:8], r24
0015d0  6303effa  loadli.w r6,  -656(r30)
0015d4  17924000  or r4, r1, r4
0015d8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0015dc  33130328  sext_int2long r[7:8], r6
0015e0  7f325100  s_lm2gm r4, r5, 0(r[3:4])
0015e4  e342effa  loadli.w r5,  -652(r30)
0015e8  2b0200f0  lui r4, 983040
0015ec  17318303  sll.d r[3:4], r[7:8], r24
0015f0  9fc32601  addli r7, r13, 148
0015f4  17924000  or r4, r1, r4
0015f8  b3920228  sext_int2long r[6:7], r5
0015fc  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
001600  7f327100  s_lm2gm r4, r7, 0(r[3:4])
001604  2b0200f0  lui r4, 983040
001608  97b28203  sll.d r[6:7], r[6:7], r24
00160c  0b215b10  add.ul r[3:4], r[23:24], r[6:7]
001610  6303fffa  loadli.w r6,  -648(r30)
001614  9f823601  addli r5, r13, 152
001618  17924000  or r4, r1, r4
00161c  7f325100  s_lm2gm r4, r5, 0(r[3:4])
001620  6b520fdf  load.d r[5:6], -528(r30)
001624  33130328  sext_int2long r[7:8], r6
001628  17318303  sll.d r[3:4], r[7:8], r24
00162c  0b2d4b10  add.ul r[27:28], r[23:24], r[5:6]
001630  2b0200f0  lui r4, 983040
001634  6343fffa  loadli.w r6,  -644(r30)
001638  9fc23601  addli r5, r13, 156
00163c  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
001640  17924000  or r4, r1, r4
001644  33130328  sext_int2long r[7:8], r6
001648  7f325100  s_lm2gm r4, r5, 0(r[3:4])
00164c  63010ffb  loadli.w r2,  -640(r30)
001650  17328303  sll.d r[5:6], r[7:8], r24
001654  2b0300f0  lui r6, 983040
001658  9f834601  addli r7, r13, 160
00165c  33110128  sext_int2long r[3:4], r2
001660  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
001664  17936000  or r6, r1, r6
001668  17318103  sll.d r[3:4], r[3:4], r24
00166c  7f337200  s_lm2gm r6, r7, 0(r[5:6])
001670  17338403  sll.d r[7:8], r[9:10], r24
001674  2b0400f0  lui r8, 983040
001678  9fc44601  addli r9, r13, 164
00167c  63021ffb  loadli.w r4,  -632(r30)
001680  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
001684  17948000  or r8, r1, r8
001688  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
00168c  33120228  sext_int2long r[5:6], r4
001690  7f349100  s_lm2gm r8, r9, 0(r[3:4])
001694  63012ffb  loadli.w r2,  -624(r30)
001698  17348503  sll.d r[9:10], r[11:12], r24
00169c  17328203  sll.d r[5:6], r[5:6], r24
0016a0  0b258b10  add.ul r[11:12], r[23:24], r[9:10]
0016a4  63442ffb  loadli.w r8,  -620(r30)
0016a8  33110128  sext_int2long r[3:4], r2
0016ac  0b224b10  add.ul r[5:6], r[23:24], r[5:6]
0016b0  17318103  sll.d r[3:4], r[3:4], r24
0016b4  33140428  sext_int2long r[9:10], r8
0016b8  0b282b10  add.ul r[17:18], r[23:24], r[3:4]
0016bc  2b0100f0  lui r2, 983040
0016c0  9f815601  addli r3, r13, 168
0016c4  17912000  or r2, r1, r2
0016c8  7f3a5801  s_lm2gm r20, r21, 0(r[17:18])
0016cc  7f313300  s_lm2gm r2, r3, 0(r[7:8])
0016d0  63013ffb  loadli.w r2,  -616(r30)
0016d4  17338403  sll.d r[7:8], r[9:10], r24
0016d8  63443ffb  loadli.w r8,  -612(r30)
0016dc  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
0016e0  33110128  sext_int2long r[3:4], r2
0016e4  33140428  sext_int2long r[9:10], r8
0016e8  17318103  sll.d r[3:4], r[3:4], r24
0016ec  0b272b10  add.ul r[15:16], r[23:24], r[3:4]
0016f0  2b0100f0  lui r2, 983040
0016f4  9fc15601  addli r3, r13, 172
0016f8  17912000  or r2, r1, r2
0016fc  7f313200  s_lm2gm r2, r3, 0(r[5:6])
001700  63014ffb  loadli.w r2,  -608(r30)
001704  17328403  sll.d r[5:6], r[9:10], r24
001708  33110128  sext_int2long r[3:4], r2
00170c  17348103  sll.d r[9:10], r[3:4], r24
001710  0b214b10  add.ul r[3:4], r[23:24], r[5:6]
001714  2b0200f0  lui r4, 983040
001718  9f826601  addli r5, r13, 176
00171c  17924000  or r4, r1, r4
001720  0b248b10  add.ul r[9:10], r[23:24], r[9:10]
001724  7f325500  s_lm2gm r4, r5, 0(r[11:12])
001728  63025ffb  loadli.w r4,  -600(r30)
00172c  17358903  sll.d r[11:12], r[19:20], r24
001730  33120228  sext_int2long r[5:6], r4
001734  17398203  sll.d r[19:20], r[5:6], r24
001738  0b22ab10  add.ul r[5:6], r[23:24], r[11:12]
00173c  0b252b11  add.ul r[11:12], r[23:24], r[19:20]
001740  33190628  sext_int2long r[19:20], r12
001744  63066ffb  loadli.w r12,  -592(r30)
001748  17398903  sll.d r[19:20], r[19:20], r24
00174c  33180628  sext_int2long r[17:18], r12
001750  63467ffb  loadli.w r12,  -580(r30)
001754  0b292b11  add.ul r[19:20], r[23:24], r[19:20]
001758  17388803  sll.d r[17:18], r[17:18], r24
00175c  73382fdb  store.d r[19:20], -592(r30)
001760  33190628  sext_int2long r[19:20], r12
001764  63068ffb  loadli.w r12,  -576(r30)
001768  0b2a0b11  add.ul r[21:22], r[23:24], r[17:18]
00176c  17388903  sll.d r[17:18], r[19:20], r24
001770  2b0900f0  lui r18, 983040
001774  9f897601  addli r19, r13, 184
001778  17992001  or r18, r1, r18
00177c  0b280b11  add.ul r[17:18], r[23:24], r[17:18]
001780  7f393301  s_lm2gm r18, r19, 0(r[7:8])
001784  63438ffb  loadli.w r6,  -572(r30)
001788  33190628  sext_int2long r[19:20], r12
00178c  73340fdf  store.d r[17:18], -536(r30)
001790  6346affb  loadli.w r12,  -556(r30)
001794  17398903  sll.d r[19:20], r[19:20], r24
001798  33130328  sext_int2long r[7:8], r6
00179c  17338303  sll.d r[7:8], r[7:8], r24
0017a0  0b286b10  add.ul r[17:18], r[23:24], r[7:8]
0017a4  0b232b11  add.ul r[7:8], r[23:24], r[19:20]
0017a8  2b0900f0  lui r18, 983040
0017ac  9f290000  addli r19, zero, 2
0017b0  179e2001  or r28, r1, r18
0017b4  73386fde  store.d r[7:8], -528(r30)
0017b8  63039ffb  loadli.w r6,  -568(r30)
0017bc  7f3edd00  s_lm2gm r28, r13, 0(r[27:28])
0017c0  2b0d00f0  lui r26, 983040
0017c4  9fcd7601  addli r27, r13, 188
0017c8  1f8e8601  addli r28, r13, 192
0017cc  33130328  sext_int2long r[7:8], r6
0017d0  179da001  or r26, r1, r26
0017d4  17338303  sll.d r[7:8], r[7:8], r24
0017d8  7f3db701  s_lm2gm r26, r27, 0(r[15:16])
0017dc  2b0d00f0  lui r26, 983040
0017e0  33170628  sext_int2long r[15:16], r12
0017e4  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
0017e8  1796a001  or r12, r1, r26
0017ec  17378703  sll.d r[15:16], r[15:16], r24
0017f0  73346fdc  store.d r[7:8], -568(r30)
0017f4  6303affb  loadli.w r6,  -560(r30)
0017f8  7f36c101  s_lm2gm r12, r28, 0(r[3:4])
0017fc  2b0600f0  lui r12, 983040
001800  6301bffb  loadli.w r2,  -552(r30)
001804  0b2deb10  add.ul r[27:28], r[23:24], r[15:16]
001808  1fc78601  addli r14, r13, 196
00180c  1f8e9601  addli r28, r13, 200
001810  1796c000  or r12, r1, r12
001814  33130328  sext_int2long r[7:8], r6
001818  33110128  sext_int2long r[3:4], r2
00181c  7f36e400  s_lm2gm r12, r14, 0(r[9:10])
001820  6344bffb  loadli.w r8,  -548(r30)
001824  2b0600f0  lui r12, 983040
001828  17338303  sll.d r[7:8], r[7:8], r24
00182c  17318103  sll.d r[3:4], r[3:4], r24
001830  1796c000  or r12, r1, r12
001834  0b236b10  add.ul r[7:8], r[23:24], r[7:8]
001838  33170428  sext_int2long r[15:16], r8
00183c  0b242b10  add.ul r[9:10], r[23:24], r[3:4]
001840  7f36c201  s_lm2gm r12, r28, 0(r[5:6])
001844  6302cffb  loadli.w r4,  -544(r30)
001848  2b0600f0  lui r12, 983040
00184c  1fcea601  addli r28, r13, 212
001850  17318703  sll.d r[3:4], r[15:16], r24
001854  1796c000  or r12, r1, r12
001858  0b272b10  add.ul r[15:16], r[23:24], r[3:4]
00185c  2b0100f0  lui r2, 983040
001860  9fc19601  addli r3, r13, 204
001864  33120228  sext_int2long r[5:6], r4
001868  7f36ca01  s_lm2gm r12, r28, 0(r[21:22])
00186c  2b0600f0  lui r12, 983040
001870  1fcab601  addli r20, r13, 220
001874  1f0e0002  addli r28, zero, 256
001878  17912000  or r2, r1, r2
00187c  17328203  sll.d r[5:6], r[5:6], r24
001880  1796c000  or r12, r1, r12
001884  7f313500  s_lm2gm r2, r3, 0(r[11:12])
001888  6341cffb  loadli.w r2,  -540(r30)
00188c  0b254b10  add.ul r[11:12], r[23:24], r[5:6]
001890  2b0200f0  lui r4, 983040
001894  9f82a601  addli r5, r13, 208
001898  7f364801  s_lm2gm r12, r20, 0(r[17:18])
00189c  eb580fdf  load.d r[18:19], -528(r30)
0018a0  2b0600f0  lui r12, 983040
0018a4  1fc8c601  addli r16, r13, 228
0018a8  17924000  or r4, r1, r4
0018ac  33110128  sext_int2long r[3:4], r2
0018b0  1796c000  or r12, r1, r12
0018b4  17318103  sll.d r[3:4], r[3:4], r24
0018b8  0b212b10  add.ul r[3:4], r[23:24], r[3:4]
0018bc  6b5b0fdb  load.d r[23:24], -592(r30)
0018c0  7f325b00  s_lm2gm r4, r5, 0(r[23:24])
0018c4  2b0200f0  lui r4, 983040
0018c8  eb5a8fde  load.d r[22:23], -536(r30)
0018cc  9f82b601  addli r5, r13, 216
0018d0  17924000  or r4, r1, r4
0018d4  7fb25a00  s_lm2gm r4, r5, 0(r[22:23])
0018d8  2b0200f0  lui r4, 983040
0018dc  9f82c601  addli r5, r13, 224
0018e0  17924000  or r4, r1, r4
0018e4  7fb25800  s_lm2gm r4, r5, 0(r[18:19])
0018e8  6b528fdc  load.d r[5:6], -568(r30)
0018ec  7f360201  s_lm2gm r12, r16, 0(r[5:6])
0018f0  2b0200f0  lui r4, 983040
0018f4  9f82d601  addli r5, r13, 232
0018f8  2b0600f0  lui r12, 983040
0018fc  1fc8d601  addli r16, r13, 236
001900  17924000  or r4, r1, r4
001904  1796c000  or r12, r1, r12
001908  7f325300  s_lm2gm r4, r5, 0(r[7:8])
00190c  2b0300f0  lui r6, 983040
001910  2b0200f0  lui r4, 983040
001914  9fc3e601  addli r7, r13, 244
001918  9f82e601  addli r5, r13, 240
00191c  7f360d01  s_lm2gm r12, r16, 0(r[27:28])
001920  1f0d0004  addli r26, zero, 512
001924  17936000  or r6, r1, r6
001928  17924000  or r4, r1, r4
00192c  7f337700  s_lm2gm r6, r7, 0(r[15:16])
001930  2b0300f0  lui r6, 983040
001934  7f325400  s_lm2gm r4, r5, 0(r[9:10])
001938  2b0200f0  lui r4, 983040
00193c  9fc3f601  addli r7, r13, 252
001940  9f82f601  addli r5, r13, 248
001944  6344fffb  loadli.w r8,  -516(r30)
001948  9f07f001  addli r15, zero, 248
00194c  17936000  or r6, r1, r6
001950  17924000  or r4, r1, r4
001954  9f000ffc  addli r1, r30, -512
001958  7f337100  s_lm2gm r6, r7, 0(r[3:4])
00195c  63019ff9  loadli.w r2,  -824(r30)
001960  7f325500  s_lm2gm r4, r5, 0(r[11:12])
001964  00a00000  mfence { lm }
001968  6346aff9  loadli.w r12,  -812(r30)
00196c  e306dff8  loadli.w r13,  -920(r30)
001970  e30dcff8  loadli.w r27,  -928(r30)
001974  0b142410  add.s r8, r8, r2
001978  6301bff9  loadli.w r2,  -808(r30)
00197c  3f3924f4  blt.s r8, r2, -5556
001980  db260000  j 308
001984  ab01c07f  lui r3, 523264
001988  376402f6  beq r4, zero, -4840
00198c  1f820100  addli r4, r3, 0
001990  3b5401f6  bneq r2, zero, -4844
001994  dba2fdff  j -4844
001998  ab01c07f  lui r3, 523264
00199c  b74501f6  beq r2, zero, -4752
0019a0  1f810100  addli r2, r3, 0
0019a4  bbb50cf6  bneq r25, zero, -4756
0019a8  dbadfdff  j -4756
0019ac  ab01c07f  lui r3, 523264
0019b0  b7e70cf6  beq r25, zero, -4616
0019b4  9f8c0100  addli r25, r3, 0
0019b8  bb570df6  bneq r26, zero, -4620
0019bc  dbbefdff  j -4620
0019c0  ab01c07f  lui r3, 523264
0019c4  37490df6  beq r26, zero, -4528
0019c8  1f8d0100  addli r26, r3, 0
0019cc  3b3904f6  bneq r8, zero, -4532
0019d0  dbc9fdff  j -4532
0019d4  ab01c07f  lui r3, 523264
0019d8  9f07f001  addli r15, zero, 248
0019dc  b72a04f6  beq r8, zero, -4440
0019e0  1f840100  addli r8, r3, 0
0019e4  bb1a03f6  bneq r6, zero, -4444
0019e8  dbd4fdff  j -4444
0019ec  ab01c07f  lui r3, 523264
0019f0  b77b03f6  beq r6, zero, -4356
0019f4  1f830100  addli r6, r3, 0
0019f8  bbeb08f6  bneq r17, zero, -4360
0019fc  5bdffdff  j -4360
001a00  ab01c07f  lui r3, 523264
001a04  37cd08f6  beq r17, zero, -4272
001a08  9f880100  addli r17, r3, 0
001a0c  3bbd0af6  bneq r21, zero, -4276
001a10  dbe9fdff  j -4276
001a14  ab01c07f  lui r3, 523264
001a18  b79e0af6  beq r21, zero, -4188
001a1c  9f8a0100  addli r21, r3, 0
001a20  bb0e0af6  bneq r20, zero, -4192
001a24  5bf4fdff  j -4192
001a28  ab01c07f  lui r3, 523264
001a2c  b76f0af6  beq r20, zero, -4104
001a30  1f8a0100  addli r20, r3, 0
001a34  bbdf09f6  bneq r19, zero, -4108
001a38  dbfefdff  j -4108
001a3c  ab01c07f  lui r3, 523264
001a40  37b109f8  beq r19, zero, -4020
001a44  9f890100  addli r19, r3, 0
001a48  3b2108f8  bneq r16, zero, -4024
001a4c  5b09feff  j -4024
001a50  ab01c07f  lui r3, 523264
001a54  b70208f8  beq r16, zero, -3936
001a58  1f880100  addli r16, r3, 0
001a5c  3bf204f8  bneq r9, zero, -3940
001a60  db13feff  j -3940
001a64  ab01c07f  lui r3, 523264
001a68  b7d304f8  beq r9, zero, -3852
001a6c  9f840100  addli r9, r3, 0
001a70  bbc303f8  bneq r7, zero, -3856
001a74  5b1efeff  j -3856
001a78  ab01c07f  lui r3, 523264
001a7c  37a503f8  beq r7, zero, -3768
001a80  9f830100  addli r7, r3, 0
001a84  3b9502f8  bneq r5, zero, -3772
001a88  db28feff  j -3772
001a8c  ab01c07f  lui r3, 523264
001a90  37f602f8  beq r5, zero, -3684
001a94  9f820100  addli r5, r3, 0
001a98  3b6602f8  bneq r4, zero, -3688
001a9c  5b33feff  j -3688
001aa0  ab01c07f  lui r3, 523264
001aa4  b74702f8  beq r4, zero, -3600
001aa8  1f820100  addli r4, r3, 0
001aac  bb3701f8  bneq r2, zero, -3604
001ab0  db3dfeff  j -3604
001ab4  9f8e9e08  addli sp, sp, 1096
001ab8  00a00300  mfence { lm, sm, gm }
001abc  00100000  exit
001ac0  00100000  exit
001ac4  00100000  exit
001ac8  00100000  exit
001acc  00100000  exit
001ad0  00100000  exit
001ad4  00100000  exit
001ad8  00100000  exit
001adc  00100000  exit
001ae0  00100000  exit
001ae4  00100000  exit
001ae8  00100000  exit
001aec  00100000  exit
001af0  00100000  exit
001af4  00100000  exit
001af8  00100000  exit
001afc  00100000  exit
001b00  00100000  exit
001b04  00100000  exit
001b08  00100000  exit
001b0c  00100000  exit
001b10  00100000  exit
001b14  00100000  exit
001b18  00100000  exit
001b1c  00100000  exit
001b20  00100000  exit
001b24  00100000  exit
001b28  00100000  exit
001b2c  00100000  exit
001b30  00100000  exit
001b34  00100000  exit
001b38  00100000  exit
001b3c  00100000  exit
001b40  00100000  exit
001b44  00100000  exit
001b48  00100000  exit
001b4c  00100000  exit
001b50  00100000  exit
001b54  00100000  exit
001b58  00100000  exit
001b5c  00100000  exit
001b60  00100000  exit
001b64  00100000  exit
001b68  00100000  exit
001b6c  00100000  exit
001b70  00100000  exit
001b74  00100000  exit
001b78  00100000  exit
001b7c  00100000  exit
001b80  00100000  exit
001b84  00100000  exit
001b88  00100000  exit
001b8c  00100000  exit
001b90  00100000  exit
001b94  00100000  exit
001b98  00100000  exit
001b9c  00100000  exit
001ba0  00100000  exit
001ba4  00100000  exit
001ba8  00100000  exit
001bac  00100000  exit
001bb0  00100000  exit
001bb4  00100000  exit
001bb8  00100000  exit
001bbc  00100000  exit
001bc0  00100000  exit
001bc4  00100000  exit
001bc8  00100000  exit
001bcc  00100000  exit
001bd0  00100000  exit
001bd4  00100000  exit
001bd8  00100000  exit
001bdc  00100000  exit
001be0  00100000  exit
001be4  00100000  exit
001be8  00100000  exit
001bec  00100000  exit
001bf0  00100000  exit
001bf4  00100000  exit
001bf8  00100000  exit
001bfc  00100000  exit
001c00  00100000  exit
001c04  00100000  exit
001c08  00100000  exit
001c0c  00100000  exit
001c10  00100000  exit
001c14  00100000  exit
001c18  00100000  exit
001c1c  00100000  exit
001c20  00100000  exit
001c24  00100000  exit
001c28  00100000  exit
001c2c  00100000  exit
001c30  00100000  exit
001c34  00100000  exit
001c38  00100000  exit
001c3c  00100000  exit
001c40  00100000  exit
001c44  00100000  exit
001c48  00100000  exit
001c4c  00100000  exit
001c50  00100000  exit
001c54  00100000  exit
001c58  00100000  exit
001c5c  00100000  exit
001c60  00100000  exit
001c64  00100000  exit
001c68  00100000  exit
001c6c  00100000  exit
001c70  00100000  exit
001c74  00100000  exit
001c78  00100000  exit
001c7c  00100000  exit
001c80  00100000  exit
001c84  00100000  exit
001c88  00100000  exit
001c8c  00100000  exit
001c90  00100000  exit
001c94  00100000  exit
001c98  00100000  exit
001c9c  00100000  exit
001ca0  00100000  exit
001ca4  00100000  exit
001ca8  00100000  exit
001cac  00100000  exit
001cb0  00100000  exit
001cb4  00100000  exit
001cb8  00100000  exit
001cbc  00100000  exit
001cc0  00100000  exit
001cc4  00100000  exit
001cc8  00100000  exit
001ccc  00100000  exit
001cd0  00100000  exit
001cd4  00100000  exit
001cd8  00100000  exit
001cdc  00100000  exit
001ce0  00100000  exit
001ce4  00100000  exit
001ce8  00100000  exit
001cec  00100000  exit
001cf0  00100000  exit
001cf4  00100000  exit
001cf8  00100000  exit
001cfc  00100000  exit
