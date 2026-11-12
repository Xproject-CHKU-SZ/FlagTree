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
0000dc  9f8e7ef9  addli sp, sp, -840
0000e0  2b010000  lui r2, 0
0000e4  80300002  core_id r1
0000e8  1f8f1e06  addli r30, sp, 776
0000ec  80520002  load_param_i r5, 0
0000f0  9bb12000  slli r3, r1, 2
0000f4  1f010100  addli r2, r2, 0
0000f8  e3454f00  loadli.w r11,  36(r30)
0000fc  63055f00  loadli.w r10,  40(r30)
000100  0b922110  add.s r4, r3, r2
000104  e3014f00  loadli.w r3,  32(r30)
000108  e7414ffa  storeli.w r4, -740(r30)
00010c  73600200  stores.w zero, 0(r4)
000110  2bf20000  lui r4, 15
000114  8b913520  mul.s r3, r11, r3
000118  00a00300  mfence { lm, sm, gm }
00011c  1b16f2ff  ori r12, r4, 4095
000120  8b96a120  mul.s r13, r3, r10
000124  80210604  csr_set csr3, r12
000128  00d00100  sync_group
00012c  4bc05604  ble.s r13, r5, 2064
000130  9f012000  addli r3, zero, 16
000134  1b83f000  andi r6, r1, 15
000138  abf3ff3f  lui r7, 262143
00013c  1f280000  addli r16, zero, 2
000140  80d70002  load_param_i r15, 1
000144  6e200062  vxor.u.mz vr0{mr1}, vr0, vr0
000148  eeb01062  vxor.s.mz vr1{mr1}, vr1, vr1
00014c  e701dffa  storeli.w r13, -744(r30)
000150  0b973030  div.s r14, r1, r3
000154  e7406ffa  storeli.w r6, -756(r30)
000158  9b9303ff  ori r7, r7, 4080
00015c  eb518f00  load.d r[4:5], 8(r30)
000160  6701fffa  storeli.w r15, -752(r30)
000164  97837000  and r7, r1, r7
000168  9bb32300  slli r7, r7, 2
00016c  1b334700  slli r6, r14, 4
000170  0b912310  add.s r2, r7, r2
000174  6741effa  storeli.w r14, -748(r30)
000178  0b936018  sub.s r6, r1, r6
00017c  9bf00004  setlti r1, r1, 64
000180  e70f2ff8  storeli.w r2, -776(r30)
000184  1b346300  slli r8, r6, 6
000188  13030300  seteq r6, r6, zero
00018c  e7008ffa  storeli.w r8, -760(r30)
000190  33140428  sext_int2long r[9:10], r8
000194  17340403  sll.d r[9:10], r[9:10], r16
000198  8ba18110  add.ul r[4:5], r[4:5], r[9:10]
00019c  1f747000  addli r8, zero, 63
0001a0  97806000  and r1, r1, r6
0001a4  73303fd0  store.d r[4:5], -768(r30)
0001a8  e74f1ff8  storeli.w r1, -772(r30)
0001ac  5b020000  j 16
0001b0  8b92f210  add.s r5, r5, r15
0001b4  3fa0d200  blt.s r5, r13, 8
0001b8  dbf00000  j 1924
0001bc  8b90a230  div.s r1, r5, r10
0001c0  8b90b030  div.s r1, r1, r11
0001c4  9bb02000  slli r1, r1, 2
0001c8  8b90e010  add.s r1, r1, r14
0001cc  bf1f14fe  blt.s r8, r1, -28
0001d0  461c0fa2  vstore_mask16.mz vr0{mr1}, 1472(r30)
0001d4  46100fc2  vstore_mask16.mz vr0{mr1}, 1536(r30)
0001d8  e74b1ffa  storeli.w r1, -580(r30)
0001dc  9bb0a000  slli r1, r1, 10
0001e0  9f210000  addli r3, zero, 2
0001e4  1f030002  addli r6, zero, 256
0001e8  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0001ec  92330002  vadd.s.mz vr7{mr1}, zero, vr0
0001f0  12340002  vadd.s.mz vr8{mr1}, zero, vr0
0001f4  92340002  vadd.s.mz vr9{mr1}, zero, vr0
0001f8  00a00000  mfence { lm }
0001fc  63011ffa  loadli.w r2,  -760(r30)
000200  46140fc2  vstore_mask16.mz vr0{mr1}, 1600(r30)
000204  46180fc2  vstore_mask16.mz vr0{mr1}, 1664(r30)
000208  00a00000  mfence { lm }
00020c  8b902010  add.s r1, r1, r2
000210  b3900028  sext_int2long r[2:3], r1
000214  97b03002  sll.d r[2:3], r[2:3], r3
000218  eb510f00  load.d r[4:5], 0(r30)
00021c  8ba01110  add.ul r[2:3], r[4:5], r[2:3]
000220  ab0100f0  lui r3, 983040
000224  2b0200f0  lui r4, 983040
000228  97113300  or r3, r6, r3
00022c  17124300  or r4, r6, r4
000230  1f038ffb  addli r6, r30, -576
000234  ffa16000  l_gm2lm r3, r6, 0(r[2:3])
000238  eb500fd0  load.d r[2:3], -768(r30)
00023c  9f018ffd  addli r3, r30, -320
000240  7fa23000  l_gm2lm r4, r3, 0(r[2:3])
000244  00a00000  mfence { lm }
000248  42128fa3  vload_mask16.mz vr4{mr1}, 1472(r30)
00024c  c2120fc2  vload_mask16.mz vr5{mr1}, 1536(r30)
000250  c2118fc2  vload_mask16.mz vr3{mr1}, 1600(r30)
000254  42110fc3  vload_mask16.mz vr2{mr1}, 1664(r30)
000258  e300cffd  loadli.w r1,  -288(r30)
00025c  6344effe  loadli.w r8,  -140(r30)
000260  63028ffd  loadli.w r4,  -320(r30)
000264  e3448ffd  loadli.w r9,  -316(r30)
000268  63079ffd  loadli.w r14,  -312(r30)
00026c  63489ffd  loadli.w r16,  -308(r30)
000270  e309affd  loadli.w r19,  -304(r30)
000274  634baffd  loadli.w r22,  -300(r30)
000278  6309bffd  loadli.w r18,  -296(r30)
00027c  e343bffd  loadli.w r7,  -292(r30)
000280  e30b6ffe  loadli.w r23,  -208(r30)
000284  e3466ffe  loadli.w r13,  -204(r30)
000288  e30a7ffe  loadli.w r21,  -200(r30)
00028c  e3457ffe  loadli.w r11,  -196(r30)
000290  e30c8ffe  loadli.w r25,  -192(r30)
000294  63458ffe  loadli.w r10,  -188(r30)
000298  e30d9ffe  loadli.w r27,  -184(r30)
00029c  634c9ffe  loadli.w r24,  -180(r30)
0002a0  630eaffe  loadli.w r28,  -176(r30)
0002a4  634daffe  loadli.w r26,  -172(r30)
0002a8  e301bffe  loadli.w r3,  -168(r30)
0002ac  6343bffe  loadli.w r6,  -164(r30)
0002b0  e347cffe  loadli.w r15,  -156(r30)
0002b4  e308dffe  loadli.w r17,  -152(r30)
0002b8  634adffe  loadli.w r20,  -148(r30)
0002bc  6301effe  loadli.w r2,  -144(r30)
0002c0  67421ffa  storeli.w r1, -732(r30)
0002c4  e340cffd  loadli.w r1,  -284(r30)
0002c8  67028ffa  storeli.w r8, -736(r30)
0002cc  6304fffe  loadli.w r8,  -136(r30)
0002d0  e7421ffa  storeli.w r1, -724(r30)
0002d4  e300dffd  loadli.w r1,  -280(r30)
0002d8  e7028ffa  storeli.w r8, -728(r30)
0002dc  6344fffe  loadli.w r8,  -132(r30)
0002e0  67431ffa  storeli.w r1, -716(r30)
0002e4  e340dffd  loadli.w r1,  -276(r30)
0002e8  67038ffa  storeli.w r8, -720(r30)
0002ec  63040fff  loadli.w r8,  -128(r30)
0002f0  e7431ffa  storeli.w r1, -708(r30)
0002f4  e300effd  loadli.w r1,  -272(r30)
0002f8  e7038ffa  storeli.w r8, -712(r30)
0002fc  63440fff  loadli.w r8,  -124(r30)
000300  67441ffa  storeli.w r1, -700(r30)
000304  e340effd  loadli.w r1,  -268(r30)
000308  67048ffa  storeli.w r8, -704(r30)
00030c  63041fff  loadli.w r8,  -120(r30)
000310  e7441ffa  storeli.w r1, -692(r30)
000314  e300fffd  loadli.w r1,  -264(r30)
000318  e7048ffa  storeli.w r8, -696(r30)
00031c  63441fff  loadli.w r8,  -116(r30)
000320  67451ffa  storeli.w r1, -684(r30)
000324  e340fffd  loadli.w r1,  -260(r30)
000328  67058ffa  storeli.w r8, -688(r30)
00032c  63042fff  loadli.w r8,  -112(r30)
000330  e7451ffa  storeli.w r1, -676(r30)
000334  e3000ffe  loadli.w r1,  -256(r30)
000338  e7058ffa  storeli.w r8, -680(r30)
00033c  63442fff  loadli.w r8,  -108(r30)
000340  67461ffa  storeli.w r1, -668(r30)
000344  e3400ffe  loadli.w r1,  -252(r30)
000348  67068ffa  storeli.w r8, -672(r30)
00034c  63043fff  loadli.w r8,  -104(r30)
000350  e7461ffa  storeli.w r1, -660(r30)
000354  e3001ffe  loadli.w r1,  -248(r30)
000358  e7068ffa  storeli.w r8, -664(r30)
00035c  63443fff  loadli.w r8,  -100(r30)
000360  67471ffa  storeli.w r1, -652(r30)
000364  e3401ffe  loadli.w r1,  -244(r30)
000368  67078ffa  storeli.w r8, -656(r30)
00036c  63044fff  loadli.w r8,  -96(r30)
000370  e7471ffa  storeli.w r1, -644(r30)
000374  e3002ffe  loadli.w r1,  -240(r30)
000378  e7078ffa  storeli.w r8, -648(r30)
00037c  63444fff  loadli.w r8,  -92(r30)
000380  67481ffa  storeli.w r1, -636(r30)
000384  e3402ffe  loadli.w r1,  -236(r30)
000388  67088ffa  storeli.w r8, -640(r30)
00038c  63045fff  loadli.w r8,  -88(r30)
000390  e7481ffa  storeli.w r1, -628(r30)
000394  e3003ffe  loadli.w r1,  -232(r30)
000398  e7088ffa  storeli.w r8, -632(r30)
00039c  63445fff  loadli.w r8,  -84(r30)
0003a0  67491ffa  storeli.w r1, -620(r30)
0003a4  e3403ffe  loadli.w r1,  -228(r30)
0003a8  67098ffa  storeli.w r8, -624(r30)
0003ac  63046fff  loadli.w r8,  -80(r30)
0003b0  e7491ffa  storeli.w r1, -612(r30)
0003b4  e3004ffe  loadli.w r1,  -224(r30)
0003b8  e7098ffa  storeli.w r8, -616(r30)
0003bc  63446fff  loadli.w r8,  -76(r30)
0003c0  674a1ffa  storeli.w r1, -604(r30)
0003c4  e3404ffe  loadli.w r1,  -220(r30)
0003c8  670a8ffa  storeli.w r8, -608(r30)
0003cc  63047fff  loadli.w r8,  -72(r30)
0003d0  e70a1ffa  storeli.w r1, -600(r30)
0003d4  e3005ffe  loadli.w r1,  -216(r30)
0003d8  674b8ffa  storeli.w r8, -588(r30)
0003dc  63447fff  loadli.w r8,  -68(r30)
0003e0  e74a1ffa  storeli.w r1, -596(r30)
0003e4  e3405ffe  loadli.w r1,  -212(r30)
0003e8  e70b8ffa  storeli.w r8, -584(r30)
0003ec  1f140000  addli r8, zero, 1
0003f0  fe0104e0  vmmov mr3, r8
0003f4  670b1ffa  storeli.w r1, -592(r30)
0003f8  9f000600  addli r1, r12, 0
0003fc  6306cffe  loadli.w r12,  -160(r30)
000400  6a236236  vor.u.mh vr6{mr3}, r4, vr6
000404  1f220000  addli r4, zero, 2
000408  7e0002e0  vmmov mr0, r4
00040c  1f420000  addli r4, zero, 4
000410  6aa36430  vor.u.mh vr6{mr0}, r9, vr6
000414  7e0102e0  vmmov mr2, r4
000418  1f021000  addli r4, zero, 8
00041c  7e0002e0  vmmov mr0, r4
000420  1f022000  addli r4, zero, 16
000424  6a236734  vor.u.mh vr6{mr2}, r14, vr6
000428  6a236830  vor.u.mh vr6{mr0}, r16, vr6
00042c  7e0002e0  vmmov mr0, r4
000430  1f024000  addli r4, zero, 32
000434  6aa36930  vor.u.mh vr6{mr0}, r19, vr6
000438  7e0002e0  vmmov mr0, r4
00043c  1f028000  addli r4, zero, 64
000440  6a236b30  vor.u.mh vr6{mr0}, r22, vr6
000444  7e0002e0  vmmov mr0, r4
000448  1f020001  addli r4, zero, 128
00044c  6a236930  vor.u.mh vr6{mr0}, r18, vr6
000450  7e0002e0  vmmov mr0, r4
000454  1f020002  addli r4, zero, 256
000458  6aa36330  vor.u.mh vr6{mr0}, r7, vr6
00045c  7e0002e0  vmmov mr0, r4
000460  63424ffa  loadli.w r4,  -732(r30)
000464  9f230000  addli r7, zero, 2
000468  6a236230  vor.u.mh vr6{mr0}, r4, vr6
00046c  1f020004  addli r4, zero, 512
000470  7e0002e0  vmmov mr0, r4
000474  63425ffa  loadli.w r4,  -724(r30)
000478  6a236230  vor.u.mh vr6{mr0}, r4, vr6
00047c  1f020008  addli r4, zero, 1024
000480  7e0002e0  vmmov mr0, r4
000484  63426ffa  loadli.w r4,  -716(r30)
000488  6a236230  vor.u.mh vr6{mr0}, r4, vr6
00048c  1f020010  addli r4, zero, 2048
000490  7e0002e0  vmmov mr0, r4
000494  63427ffa  loadli.w r4,  -708(r30)
000498  6a236230  vor.u.mh vr6{mr0}, r4, vr6
00049c  1f020020  addli r4, zero, 4096
0004a0  7e0002e0  vmmov mr0, r4
0004a4  63428ffa  loadli.w r4,  -700(r30)
0004a8  6a236230  vor.u.mh vr6{mr0}, r4, vr6
0004ac  1f020040  addli r4, zero, 8192
0004b0  7e0002e0  vmmov mr0, r4
0004b4  63429ffa  loadli.w r4,  -692(r30)
0004b8  6a236230  vor.u.mh vr6{mr0}, r4, vr6
0004bc  2b420000  lui r4, 4
0004c0  7e0002e0  vmmov mr0, r4
0004c4  6342affa  loadli.w r4,  -684(r30)
0004c8  6a236230  vor.u.mh vr6{mr0}, r4, vr6
0004cc  2b820000  lui r4, 8
0004d0  7e0002e0  vmmov mr0, r4
0004d4  6342bffa  loadli.w r4,  -676(r30)
0004d8  6a236230  vor.u.mh vr6{mr0}, r4, vr6
0004dc  6342cffa  loadli.w r4,  -668(r30)
0004e0  7e8003e0  vmmov mr0, r7
0004e4  9f031000  addli r7, zero, 8
0004e8  ea237236  vor.u.mh vr7{mr3}, r4, vr7
0004ec  6342dffa  loadli.w r4,  -660(r30)
0004f0  0e126202  vmul.f.mz.rn vr4{mr1}, vr4, vr6
0004f4  12330002  vadd.s.mz vr6{mr1}, zero, vr0
0004f8  ea237230  vor.u.mh vr7{mr0}, r4, vr7
0004fc  6342effa  loadli.w r4,  -652(r30)
000500  7e8003e0  vmmov mr0, r7
000504  9f032000  addli r7, zero, 16
000508  ea237234  vor.u.mh vr7{mr2}, r4, vr7
00050c  6342fffa  loadli.w r4,  -644(r30)
000510  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000514  63420ffb  loadli.w r4,  -636(r30)
000518  7e8003e0  vmmov mr0, r7
00051c  9f034000  addli r7, zero, 32
000520  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000524  63421ffb  loadli.w r4,  -628(r30)
000528  7e8003e0  vmmov mr0, r7
00052c  9f038000  addli r7, zero, 64
000530  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000534  63422ffb  loadli.w r4,  -620(r30)
000538  7e8003e0  vmmov mr0, r7
00053c  9f030001  addli r7, zero, 128
000540  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000544  63423ffb  loadli.w r4,  -612(r30)
000548  7e8003e0  vmmov mr0, r7
00054c  9f030002  addli r7, zero, 256
000550  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000554  63424ffb  loadli.w r4,  -604(r30)
000558  7e8003e0  vmmov mr0, r7
00055c  9f030004  addli r7, zero, 512
000560  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000564  63025ffb  loadli.w r4,  -600(r30)
000568  7e8003e0  vmmov mr0, r7
00056c  9f030008  addli r7, zero, 1024
000570  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000574  63425ffb  loadli.w r4,  -596(r30)
000578  7e8003e0  vmmov mr0, r7
00057c  9f030010  addli r7, zero, 2048
000580  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000584  63026ffb  loadli.w r4,  -592(r30)
000588  7e8003e0  vmmov mr0, r7
00058c  ea237230  vor.u.mh vr7{mr0}, r4, vr7
000590  1f020020  addli r4, zero, 4096
000594  7e0102e0  vmmov mr2, r4
000598  1f020040  addli r4, zero, 8192
00059c  eaa37b34  vor.u.mh vr7{mr2}, r23, vr7
0005a0  fe0102e0  vmmov mr3, r4
0005a4  2b420000  lui r4, 4
0005a8  7e0002e0  vmmov mr0, r4
0005ac  2b820000  lui r4, 8
0005b0  eaa37636  vor.u.mh vr7{mr3}, r13, vr7
0005b4  eaa37a30  vor.u.mh vr7{mr0}, r21, vr7
0005b8  7e0002e0  vmmov mr0, r4
0005bc  1f120000  addli r4, zero, 1
0005c0  eaa37530  vor.u.mh vr7{mr0}, r11, vr7
0005c4  7e0002e0  vmmov mr0, r4
0005c8  1f220000  addli r4, zero, 2
0005cc  6aa48c30  vor.u.mh vr8{mr0}, r25, vr8
0005d0  7e0002e0  vmmov mr0, r4
0005d4  1f420000  addli r4, zero, 4
0005d8  8e927202  vmul.f.mz.rn vr5{mr1}, vr5, vr7
0005dc  92330002  vadd.s.mz vr7{mr1}, zero, vr0
0005e0  6a248530  vor.u.mh vr8{mr0}, r10, vr8
0005e4  7e0002e0  vmmov mr0, r4
0005e8  1f021000  addli r4, zero, 8
0005ec  6aa48d30  vor.u.mh vr8{mr0}, r27, vr8
0005f0  7e0002e0  vmmov mr0, r4
0005f4  1f022000  addli r4, zero, 16
0005f8  6a248c30  vor.u.mh vr8{mr0}, r24, vr8
0005fc  7e0002e0  vmmov mr0, r4
000600  1f024000  addli r4, zero, 32
000604  6a248e30  vor.u.mh vr8{mr0}, r28, vr8
000608  7e0002e0  vmmov mr0, r4
00060c  1f028000  addli r4, zero, 64
000610  6a248d30  vor.u.mh vr8{mr0}, r26, vr8
000614  7e0002e0  vmmov mr0, r4
000618  6aa48130  vor.u.mh vr8{mr0}, r3, vr8
00061c  9f010001  addli r3, zero, 128
000620  7e8001e0  vmmov mr0, r3
000624  9f010002  addli r3, zero, 256
000628  6a248330  vor.u.mh vr8{mr0}, r6, vr8
00062c  7e8001e0  vmmov mr0, r3
000630  6a248630  vor.u.mh vr8{mr0}, r12, vr8
000634  1f860000  addli r12, r1, 0
000638  9f000004  addli r1, zero, 512
00063c  7e8000e0  vmmov mr0, r1
000640  9f000008  addli r1, zero, 1024
000644  6aa48730  vor.u.mh vr8{mr0}, r15, vr8
000648  7e8000e0  vmmov mr0, r1
00064c  9f000010  addli r1, zero, 2048
000650  6aa48830  vor.u.mh vr8{mr0}, r17, vr8
000654  7e8000e0  vmmov mr0, r1
000658  6a248a30  vor.u.mh vr8{mr0}, r20, vr8
00065c  6a248134  vor.u.mh vr8{mr2}, r2, vr8
000660  e3004ffa  loadli.w r1,  -736(r30)
000664  2b410000  lui r2, 4
000668  7e0001e0  vmmov mr0, r2
00066c  2b810000  lui r2, 8
000670  6aa48036  vor.u.mh vr8{mr3}, r1, vr8
000674  e3005ffa  loadli.w r1,  -728(r30)
000678  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00067c  e3006ffa  loadli.w r1,  -720(r30)
000680  7e0001e0  vmmov mr0, r2
000684  1f110000  addli r2, zero, 1
000688  6aa48030  vor.u.mh vr8{mr0}, r1, vr8
00068c  e3007ffa  loadli.w r1,  -712(r30)
000690  7e0001e0  vmmov mr0, r2
000694  1f210000  addli r2, zero, 2
000698  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
00069c  e3008ffa  loadli.w r1,  -704(r30)
0006a0  7e0001e0  vmmov mr0, r2
0006a4  1f410000  addli r2, zero, 4
0006a8  8e918102  vmul.f.mz.rn vr3{mr1}, vr3, vr8
0006ac  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006b0  e3009ffa  loadli.w r1,  -696(r30)
0006b4  7e0001e0  vmmov mr0, r2
0006b8  1f011000  addli r2, zero, 8
0006bc  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006c0  e300affa  loadli.w r1,  -688(r30)
0006c4  7e0001e0  vmmov mr0, r2
0006c8  1f012000  addli r2, zero, 16
0006cc  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006d0  e300bffa  loadli.w r1,  -680(r30)
0006d4  7e0001e0  vmmov mr0, r2
0006d8  1f014000  addli r2, zero, 32
0006dc  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006e0  e300cffa  loadli.w r1,  -672(r30)
0006e4  7e0001e0  vmmov mr0, r2
0006e8  1f018000  addli r2, zero, 64
0006ec  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
0006f0  e300dffa  loadli.w r1,  -664(r30)
0006f4  7e0001e0  vmmov mr0, r2
0006f8  1f010001  addli r2, zero, 128
0006fc  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000700  e300effa  loadli.w r1,  -656(r30)
000704  7e0001e0  vmmov mr0, r2
000708  1f010002  addli r2, zero, 256
00070c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000710  e300fffa  loadli.w r1,  -648(r30)
000714  7e0001e0  vmmov mr0, r2
000718  1f010004  addli r2, zero, 512
00071c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000720  e3000ffb  loadli.w r1,  -640(r30)
000724  7e0001e0  vmmov mr0, r2
000728  1f010008  addli r2, zero, 1024
00072c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000730  e3001ffb  loadli.w r1,  -632(r30)
000734  7e0001e0  vmmov mr0, r2
000738  1f010010  addli r2, zero, 2048
00073c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000740  e3002ffb  loadli.w r1,  -624(r30)
000744  7e0001e0  vmmov mr0, r2
000748  2b410000  lui r2, 4
00074c  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000750  e3003ffb  loadli.w r1,  -616(r30)
000754  7e0001e0  vmmov mr0, r2
000758  2b810000  lui r2, 8
00075c  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000760  e3004ffb  loadli.w r1,  -608(r30)
000764  7e0101e0  vmmov mr2, r2
000768  eaa49036  vor.u.mh vr9{mr3}, r1, vr9
00076c  e3406ffb  loadli.w r1,  -588(r30)
000770  eaa49030  vor.u.mh vr9{mr0}, r1, vr9
000774  abf00000  lui r1, 15
000778  9ff0f01f  addli r1, r1, 4095
00077c  7e8000e0  vmmov mr0, r1
000780  e3007ffb  loadli.w r1,  -584(r30)
000784  6e934030  vor.f.mh vr6{mr0}, vr1, vr4
000788  ee935030  vor.f.mh vr7{mr0}, vr1, vr5
00078c  12320002  vadd.s.mz vr4{mr1}, zero, vr0
000790  eaa49034  vor.u.mh vr9{mr2}, r1, vr9
000794  6e923030  vor.f.mh vr4{mr0}, vr1, vr3
000798  96127302  vadd.f.mz.rn vr5{mr1}, vr6, vr7
00079c  92310002  vadd.s.mz vr3{mr1}, zero, vr0
0007a0  0e119102  vmul.f.mz.rn vr2{mr1}, vr2, vr9
0007a4  16924202  vadd.f.mz.rn vr4{mr1}, vr5, vr4
0007a8  ee912030  vor.f.mh vr3{mr0}, vr1, vr2
0007ac  16113202  vadd.f.mz.rn vr2{mr1}, vr4, vr3
0007b0  fa100140  vextracti.f r1, 0(vr2)
0007b4  7a111140  vextracti.f r2, 1(vr2)
0007b8  8be02010  add.f.rn r1, r1, r2
0007bc  7a112140  vextracti.f r2, 2(vr2)
0007c0  8b601110  add.f.rn r1, r2, r1
0007c4  7a113140  vextracti.f r2, 3(vr2)
0007c8  8b601110  add.f.rn r1, r2, r1
0007cc  7a114140  vextracti.f r2, 4(vr2)
0007d0  8b601110  add.f.rn r1, r2, r1
0007d4  7a115140  vextracti.f r2, 5(vr2)
0007d8  8b601110  add.f.rn r1, r2, r1
0007dc  7a116140  vextracti.f r2, 6(vr2)
0007e0  8b601110  add.f.rn r1, r2, r1
0007e4  7a117140  vextracti.f r2, 7(vr2)
0007e8  8b601110  add.f.rn r1, r2, r1
0007ec  7a118140  vextracti.f r2, 8(vr2)
0007f0  8b601110  add.f.rn r1, r2, r1
0007f4  7a119140  vextracti.f r2, 9(vr2)
0007f8  8b601110  add.f.rn r1, r2, r1
0007fc  7a11a140  vextracti.f r2, 10(vr2)
000800  8b601110  add.f.rn r1, r2, r1
000804  7a11b140  vextracti.f r2, 11(vr2)
000808  8b601110  add.f.rn r1, r2, r1
00080c  7a11c140  vextracti.f r2, 12(vr2)
000810  8b601110  add.f.rn r1, r2, r1
000814  7a11d140  vextracti.f r2, 13(vr2)
000818  8b601110  add.f.rn r1, r2, r1
00081c  7a11e140  vextracti.f r2, 14(vr2)
000820  8b601110  add.f.rn r1, r2, r1
000824  7a11f140  vextracti.f r2, 15(vr2)
000828  8b601110  add.f.rn r1, r2, r1
00082c  63413ffa  loadli.w r2,  -740(r30)
000830  73601100  stores.w r1, 0(r2)
000834  00a00300  mfence { lm, sm, gm }
000838  80210604  csr_set csr3, r12
00083c  00d00100  sync_group
000840  e3401ffa  loadli.w r1,  -756(r30)
000844  3ba20000  bneq r1, zero, 136
000848  6302fff9  loadli.w r4,  -776(r30)
00084c  ef400200  loads.w r1, 0(r4)
000850  6f414200  loads.w r2, 4(r4)
000854  ef418200  loads.w r3, 8(r4)
000858  8be02010  add.f.rn r1, r1, r2
00085c  6f41c200  loads.w r2, 12(r4)
000860  8be03010  add.f.rn r1, r1, r3
000864  ef410201  loads.w r3, 16(r4)
000868  8be02010  add.f.rn r1, r1, r2
00086c  6f414201  loads.w r2, 20(r4)
000870  8be03010  add.f.rn r1, r1, r3
000874  ef418201  loads.w r3, 24(r4)
000878  8be02010  add.f.rn r1, r1, r2
00087c  6f41c201  loads.w r2, 28(r4)
000880  8be03010  add.f.rn r1, r1, r3
000884  ef410202  loads.w r3, 32(r4)
000888  8be02010  add.f.rn r1, r1, r2
00088c  6f414202  loads.w r2, 36(r4)
000890  8be03010  add.f.rn r1, r1, r3
000894  ef418202  loads.w r3, 40(r4)
000898  8be02010  add.f.rn r1, r1, r2
00089c  6f41c202  loads.w r2, 44(r4)
0008a0  8be03010  add.f.rn r1, r1, r3
0008a4  ef410203  loads.w r3, 48(r4)
0008a8  8be02010  add.f.rn r1, r1, r2
0008ac  6f414203  loads.w r2, 52(r4)
0008b0  8be03010  add.f.rn r1, r1, r3
0008b4  ef418203  loads.w r3, 56(r4)
0008b8  8be02010  add.f.rn r1, r1, r2
0008bc  6f41c203  loads.w r2, 60(r4)
0008c0  8be03010  add.f.rn r1, r1, r3
0008c4  8be02010  add.f.rn r1, r1, r2
0008c8  73601200  stores.w r1, 0(r4)
0008cc  00a00300  mfence { lm, sm, gm }
0008d0  80210604  csr_set csr3, r12
0008d4  00d00100  sync_group
0008d8  63055f00  loadli.w r10,  40(r30)
0008dc  e3454f00  loadli.w r11,  36(r30)
0008e0  e3063ffa  loadli.w r13,  -744(r30)
0008e4  63472ffa  loadli.w r14,  -748(r30)
0008e8  e3072ffa  loadli.w r15,  -752(r30)
0008ec  e340fff9  loadli.w r1,  -772(r30)
0008f0  63417ffb  loadli.w r2,  -580(r30)
0008f4  1f747000  addli r8, zero, 63
0008f8  b7e200fc  beq r1, zero, -1864
0008fc  e300fff9  loadli.w r1,  -776(r30)
000900  33110128  sext_int2long r[3:4], r2
000904  1f220000  addli r4, zero, 2
000908  6b530f01  load.d r[7:8], 16(r30)
00090c  17314102  sll.d r[3:4], r[3:4], r4
000910  2b0200f0  lui r4, 983040
000914  efc00000  loads.w r1, 0(r1)
000918  0b212310  add.ul r[3:4], r[7:8], r[3:4]
00091c  670c1ffe  storeli.w r1, -64(r30)
000920  9f400000  addli r1, zero, 4
000924  00a00000  mfence { lm }
000928  97904000  or r1, r1, r4
00092c  1f028fff  addli r4, r30, -64
000930  ff304100  s_lm2gm r1, r4, 0(r[3:4])
000934  00a00000  mfence { lm }
000938  5b0fffff  j -1928
00093c  9f8e1e06  addli sp, sp, 776
000940  00a00300  mfence { lm, sm, gm }
000944  00100000  exit
000948  00100000  exit
00094c  00100000  exit
000950  00100000  exit
000954  00100000  exit
000958  00100000  exit
00095c  00100000  exit
000960  00100000  exit
000964  00100000  exit
000968  00100000  exit
00096c  00100000  exit
000970  00100000  exit
000974  00100000  exit
000978  00100000  exit
00097c  00100000  exit
000980  00100000  exit
000984  00100000  exit
000988  00100000  exit
00098c  00100000  exit
000990  00100000  exit
000994  00100000  exit
000998  00100000  exit
00099c  00100000  exit
0009a0  00100000  exit
0009a4  00100000  exit
0009a8  00100000  exit
0009ac  00100000  exit
0009b0  00100000  exit
0009b4  00100000  exit
0009b8  00100000  exit
0009bc  00100000  exit
0009c0  00100000  exit
0009c4  00100000  exit
0009c8  00100000  exit
0009cc  00100000  exit
0009d0  00100000  exit
0009d4  00100000  exit
0009d8  00100000  exit
0009dc  00100000  exit
0009e0  00100000  exit
0009e4  00100000  exit
0009e8  00100000  exit
0009ec  00100000  exit
0009f0  00100000  exit
0009f4  00100000  exit
0009f8  00100000  exit
0009fc  00100000  exit
000a00  00100000  exit
000a04  00100000  exit
000a08  00100000  exit
000a0c  00100000  exit
000a10  00100000  exit
000a14  00100000  exit
000a18  00100000  exit
000a1c  00100000  exit
000a20  00100000  exit
000a24  00100000  exit
000a28  00100000  exit
000a2c  00100000  exit
000a30  00100000  exit
000a34  00100000  exit
000a38  00100000  exit
000a3c  00100000  exit
000a40  00100000  exit
000a44  00100000  exit
000a48  00100000  exit
000a4c  00100000  exit
000a50  00100000  exit
000a54  00100000  exit
000a58  00100000  exit
000a5c  00100000  exit
000a60  00100000  exit
000a64  00100000  exit
000a68  00100000  exit
000a6c  00100000  exit
000a70  00100000  exit
000a74  00100000  exit
000a78  00100000  exit
000a7c  00100000  exit
000a80  00100000  exit
000a84  00100000  exit
000a88  00100000  exit
000a8c  00100000  exit
000a90  00100000  exit
000a94  00100000  exit
000a98  00100000  exit
000a9c  00100000  exit
000aa0  00100000  exit
000aa4  00100000  exit
000aa8  00100000  exit
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
